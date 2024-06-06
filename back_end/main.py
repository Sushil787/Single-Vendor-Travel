import math
import re
import numpy as np
import string
from flask import Flask, jsonify, request 
import firebase_admin 
from firebase_admin import credentials, firestore
from google.cloud.firestore_v1.base_query import FieldFilter
import numpy as np
import json

app = Flask(__name__) 

cred = credentials.Certificate("key.json")
firebase_admin.initialize_app(cred)
db = firestore.client()

travel_packages = []
recommendations = []

'''
Get user search history from firebase database
'''
def get_user_search_history(user_id)->list:
   user_search_history = []
   collection =  db.collection('search_history')
   history = collection.where(filter=FieldFilter('uid', '==', user_id)).get()
   for doc in history:
    user_search_history.append(doc.to_dict()['search'])
   return list(set(user_search_history))
    # return []

'''
Get travel packages from firebase firestore
'''
def get_travel_package_model()->list:
    collection = db.collection('packages')
    docs = collection.get()
    for doc in docs:
        travel_packages.append(doc.to_dict())
    return travel_packages



packages_dict = {}
def prepate_dict():
    for package in travel_packages:
        packages_dict[package["uuid"]] = package["packageName"]

STOP_WORDS = set(["the", "and", "is", "in", "it", "to", "of", "this", "that", "for"])
'''
'''
def remove_special_characters(word):
    pattern = r"[^\w\s]"
    cleaned_word = re.sub(pattern, "", word)
    return cleaned_word

def calculate_tf(terms):
    tf_dict = {}
    total_terms = len(terms)
    for term in terms:
        term = remove_special_characters(term)
        if term not in tf_dict:
            tf_dict[term] = 0
        tf_dict[term] += 1 / total_terms
    return tf_dict

def calculate_idf(term, cleaned_documents):
    term = remove_special_characters(term).strip().lower()
    num_documents_with_term = sum(
        1 for document in cleaned_documents if term in document.lower()
    )

    if num_documents_with_term > 0:
        log_result = 1 + math.log(
            len(cleaned_documents) / num_documents_with_term
        )  # 1 is added for smoothing
        return log_result
    else:
        return 0
'''
prefrocess
'''
def preprocess(document):
    terms = re.split(r'[,\s]+', document)
    cleaned_terms = [
        remove_special_characters(term)
        for term in terms
        if term.lower() not in STOP_WORDS
    ]
    return cleaned_terms


def clean_documents(documents):
    cleaned_documents = [
        " ".join(preprocess(document)) for document in documents.values()
    ]
    return cleaned_documents

'''
document
'''
def fit_document(document, vocabulary, cleaned_documents):
    terms = preprocess(document)
    tf_idf_vector = np.zeros(len(vocabulary))
    tf = calculate_tf(terms)

    for i, term in enumerate(vocabulary):
        term = remove_special_characters(term)
        if term in tf:
            tf_idf_vector[i] = tf[term] * calculate_idf(term, cleaned_documents)
    return tf_idf_vector

def cosine_similarity(vec1, vec2):
    dot_product = np.dot(vec1, vec2)
    norm_vec1 = np.linalg.norm(vec1)
    norm_vec2 = np.linalg.norm(vec2)
    # Check for zero division
    if norm_vec1 == 0 or norm_vec2 == 0:
        return 0.0
    else:
        return dot_product / (norm_vec1 * norm_vec2)

def get_recommendations(search_history, documents):
    cleaned_documents = clean_documents(documents)
    vocabulary = list(set([term for document in cleaned_documents for term in document.split()]))
    tfidf_matrix = []

    for key, document in documents.items():
        tf_idf_vector = fit_document(document, vocabulary, cleaned_documents)
        tfidf_matrix.append((key, tf_idf_vector))

    search_tfidf = fit_document(search_history, vocabulary, cleaned_documents)
    similarities = []
    for _, doc_tfidf in tfidf_matrix:
        similarities.append(cosine_similarity(search_tfidf, doc_tfidf))

    sorted_indices = np.argsort(similarities)[::-1]
    print((tfidf_matrix[i][0], similarities[i]) for i in sorted_indices)
    recommendations = [(tfidf_matrix[i][0], similarities[i]) for i in sorted_indices]
    return recommendations

def recommend(uid)->list:
    results = []
    user_search_history = get_user_search_history(uid)
    print(user_search_history)
    get_travel_package_model()
    prepate_dict()
    for search in user_search_history:
        recommendations = get_recommendations(search, packages_dict)
        print(f"Search: {search}")
        for doc, similarity in recommendations:
            if similarity > 0.3:
                for package in travel_packages:
                    print(package)
                    if package["uuid"] == doc:
                        results.append(package)
                        break
    return results



@app.route('/recommend', methods=['POST']) 
def return_json(): 
    request_data = request.json
    uid = request_data.get('uid')
    if request.method == 'POST': 
      #  recommendations = [] 
       recommendations =(recommend(uid))
       print(len(recommendations))

       
    return jsonify({"data": recommendations}), 200


if __name__ == '__main__': 
    app.run(host='0.0.0.0', port=80,debug=True)