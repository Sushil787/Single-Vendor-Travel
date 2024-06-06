import string
from flask import Flask, jsonify, request 
import firebase_admin 
from firebase_admin import credentials, firestore
from google.cloud.firestore_v1.base_query import FieldFilter
import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
import json

app = Flask(__name__) 

cred = credentials.Certificate("key.json")
firebase_admin.initialize_app(cred)
db = firestore.client()
user_search_history = []
travel_packages = []


'''
Get travel packages from firebase firestore
'''
def get_travel_package_model()->list:
    collection = db.collection('packages')
    docs = collection.get()
    for doc in docs:
        travel_packages.append(doc.to_dict())
    return travel_packages


'''
Get user search history from firebase database
'''
def get_user_search_history(user_id)->list:
   collection =  db.collection('search_history')
   history = collection.where(filter=FieldFilter('uid', '==', user_id)).get()
   for doc in history:
    user_search_history.append(doc.to_dict()['search'])
   return user_search_history



def recommend(uid)->list:
    packages = get_travel_package_model()
    search_history = get_user_search_history(uid)
    
    # Preprocess data and convert to numerical vectors
    vectorizer = TfidfVectorizer()
    user_search_vectors = vectorizer.fit_transform(search_history)
    package_descriptions = [package["packageName"] for package in packages]
    package_description_vectors = vectorizer.transform(package_descriptions)
    # Calculate cosine similarity
    similarity_scores = cosine_similarity(user_search_vectors, package_description_vectors)
    # Find indices of packages similar to user search history
    print(similarity_scores)

    similar_packages_indices = np.where(similarity_scores > 0.7)
    # Recommend travel packages similar to user search history
    recommendations = [travel_packages[i] for i in similar_packages_indices[1]]

    print("Recommendations based on user search history:")
    for recommendation in recommendations:
          print(recommendation["packageName"])
        # print(recommendation["packageName"], "-", recommendation["description"])
    return recommendations


# 'eSzgXnDPejSAd9swEfZd05CWWSr1'
@app.route('/recommend', methods=['POST']) 
def return_json(): 
    request_data = request.json
    uid = request_data.get('uid')
    if request.method == 'POST': 
       recommendations = recommend(uid)
    #    recommendation_json = jsonify({"recommended": json.dumps(recommendations)})
    return jsonify({"data": recommendations}), 200

@app.route('/hello', methods=['GET']) 
def get(): 
    return jsonify({'hello':"boy"}), 200

if __name__ == '__main__': 
    app.run(debug=True)
