import math
import numpy as np
import re

# Given documents and user search
documents = {
    "doc1": "This is the first document.",
    "doc2": "The second document has more content.",
    "doc3": "Another document with some unique content."
}
user_search = "content"

# Step 1: Preprocessing
STOP_WORDS = set(["the", "and", "is", "in", "it", "to", "of", "this", "that", "for"])

def remove_special_characters(word):
    pattern = r"[^\w\s]"
    cleaned_word = re.sub(pattern, "", word)
    return cleaned_word

def preprocess(document):
    terms = document.lower().split()
    cleaned_terms = [
        remove_special_characters(term)
        for term in terms
        if term not in STOP_WORDS
    ]
    return cleaned_terms

cleaned_documents = {doc_id: preprocess(doc) for doc_id, doc in documents.items()}
cleaned_search = preprocess(user_search)

# Step 2: TF-IDF Calculation
def calculate_tf(terms):
    tf_dict = {}
    total_terms = len(terms)
    for term in terms:
        if term not in tf_dict:
            tf_dict[term] = 0
        tf_dict[term] += 1 / total_terms
    return tf_dict

def calculate_idf(term, all_documents):
    num_documents_with_term = sum(
        1 for document_terms in all_documents.values() if term in document_terms
    )
    if num_documents_with_term > 0:
        return 1 + math.log(len(all_documents) / num_documents_with_term)
    else:
        return 0

all_documents = cleaned_documents.copy()
all_documents["search_query"] = cleaned_search

vocabulary = list(set([term for terms in all_documents.values() for term in terms]))

tfidf_matrix = {}
for doc_id, doc_terms in all_documents.items():
    tfidf_vector = np.zeros(len(vocabulary))
    tf_dict = calculate_tf(doc_terms)
    for i, term in enumerate(vocabulary):
        if term in tf_dict:
            tfidf_vector[i] = tf_dict[term] * calculate_idf(term, all_documents)
    tfidf_matrix[doc_id] = tfidf_vector

# Step 3: Cosine Similarity
def cosine_similarity(vec1, vec2):
    dot_product = np.dot(vec1, vec2)
    norm_vec1 = np.linalg.norm(vec1)
    norm_vec2 = np.linalg.norm(vec2)
    if norm_vec1 == 0 or norm_vec2 == 0:
        return 0.0
    else:
        return dot_product / (norm_vec1 * norm_vec2)

similarities = {}
search_tfidf = tfidf_matrix["search_query"]
for doc_id, doc_tfidf in tfidf_matrix.items():
    if doc_id != "search_query":
        similarities[doc_id] = cosine_similarity(search_tfidf, doc_tfidf)

# Step 4: Find Most Similar Document
most_similar_doc = max(similarities, key=similarities.get)
similarity_score = similarities[most_similar_doc]

print("Most Similar Document:", most_similar_doc)
print("Cosine Similarity Score:", similarity_score)
