import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

# Sample user search history
user_search_history = [
    "beach",
    "mountain"
    

]

# Sample travel package data (assuming it's stored as dictionaries)
travel_packages = [
    {
        "uuid": "1",
        "packageName": "Beach Paradise",
        "description": "Relax on the beautiful sandy beaches with crystal clear waters.",
        "tags": ["beach", "relaxation", "sea"],
        "location": "Beachside Resort",
        "perHeadPerNight": 100.0
    },
    {
        "uuid": "2",
        "packageName": "Mountain Adventure",
        "description": "Embark on an exciting trekking adventure through breathtaking mountain landscapes.",
        "tags": ["mountain", "trekking", "adventure"],
        "location": "Mountain Lodge",
        "perHeadPerNight": 150.0
    },
    {
        "uuid": "3",
        "packageName": "City Explorer",
        "description": "Discover the vibrant culture and history of the bustling city streets.",
        "tags": ["city", "culture", "history"],
        "location": "City Center Hotel",
        "perHeadPerNight": 120.0
    },
    {
        "uuid": "4",
        "packageName": "Safari Expedition",
        "description": "Experience the thrill of wildlife safari amidst stunning natural landscapes.",
        "tags": ["safari", "wildlife", "nature"],
        "location": "Wilderness Camp",
        "perHeadPerNight": 200.0
    },
    {
        "uuid": "5",
        "packageName": "Luxury Cruise",
        "description": "Indulge in opulence aboard a luxurious cruise liner, exploring exotic destinations.",
        "tags": ["cruise", "luxury", "exotic"],
        "location": "Cruise Ship",
        "perHeadPerNight": 300.0
    },
    {
        "uuid": "6",
        "packageName": "Cultural Immersion",
        "description": "Immerse yourself in the rich cultural heritage of ancient civilizations.",
        "tags": ["cultural", "heritage", "immersion"],
        "location": "Heritage Villa",
        "perHeadPerNight": 180.0
    }
]

def recommend():
    # Preprocess data and convert to numerical vectors
    vectorizer = TfidfVectorizer()
    user_search_vectors = vectorizer.fit_transform(user_search_history)
    package_descriptions = [package["packageName"] for package in travel_packages]
    package_description_vectors = vectorizer.transform(package_descriptions)

    # Calculate cosine similarity
    similarity_scores = cosine_similarity(user_search_vectors, package_description_vectors)

    # Find indices of packages similar to user search history
    similar_packages_indices = np.where(similarity_scores > 0)

    # Recommend travel packages similar to user search history
    recommendations = [travel_packages[i] for i in similar_packages_indices[1]]

    print("Recommendations based on user search history:")
    for recommendation in recommendations:
        print(recommendation["packageName"], "-", recommendation["description"])

if __name__ == '__main__': 
    recommend()
