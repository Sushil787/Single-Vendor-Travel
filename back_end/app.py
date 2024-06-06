import numpy as np


def tfidf(corpus):
    # Tokenize the corpus
    tokens = [doc.split() for doc in corpus]

    # Create a set of unique words (vocabulary)
    vocabulary = list(set([word for doc in tokens for word in doc]))

    # Compute IDF
    idf = {}
    for word in vocabulary:
        idf[word] = np.log(len(corpus) / (1 + sum([1 for doc in tokens if word in doc])))

    # Compute TF-IDF
    tfidf_matrix = np.zeros((len(corpus), len(vocabulary)))
    for i, doc in enumerate(tokens):
        for j, word in enumerate(vocabulary):
            tf = doc.count(word) / len(doc)
            tfidf_matrix[i, j] = tf * idf[word]

    return tfidf_matrix, vocabulary


def cosine_similarity(vec1, vec2):
    dot_product = np.dot(vec1, vec2)
    norm_vec1 = np.linalg.norm(vec1)
    norm_vec2 = np.linalg.norm(vec2)
    return dot_product / (norm_vec1 * norm_vec2)

def get_recommendations(searches, corpus, tfidf_matrix, vocabulary):
    all_recommendations = []
    for search_history in searches:
        # Compute TF-IDF for the search history
        search_tfidf = np.zeros(len(vocabulary))
        for word in search_history.split():
            if word in vocabulary:
                index = vocabulary.index(word)
                search_tfidf[index] = (search_history.split().count(word) / len(search_history.split())) * \
                                      np.log(len(corpus) / (1 + sum([1 for doc in corpus if word in doc])))
        # Calculate cosine similarity with each document
        similarities = []
        for i, doc_tfidf in enumerate(tfidf_matrix):
            similarities.append(cosine_similarity(search_tfidf, doc_tfidf))
        # Sort documents based on similarity
        sorted_indices = np.argsort(similarities)[::-1]
        # Get recommended documents
        recommendations = [(corpus[i], similarities[i]) for i in sorted_indices]
        all_recommendations.append(recommendations)

    return all_recommendations

# Example list of searches
searches = ["apple ", "banana"]
corpus = [
    "apple, banana ",
    "apple, orange",
    "banana, orange",
    "apple"
]


tfidf_matrix, vocabulary = tfidf(corpus)


# Get recommendations for each search
all_recommendations = get_recommendations(searches, corpus, tfidf_matrix, vocabulary)
# print(all_recommendations)


for i, recommendations in enumerate(all_recommendations):
    print(f"Search: {searches[i]}")
    for doc, similarity in recommendations:
        print(f"Document: {doc}, Similarity: {similarity}")
    print()