

# def create_table():
#     try:
#         cursor = con.cursor()
#         cursor.execute(CREATE_PACKAGE_TABLE)
#         cursor.execute(USER_SEARCH_HISTORY_TABLE)
        
#     except sqlite3.Error as error:
#         print('Error -', error)
        
#     finally:
#         print('SQLite Connection closed')

        
# def get_search_hostory_from_table(id:string):
#     try:
#         cursor = con.cursor()
#         cursor.execute(GET_USER_SEARCH_HISTORY, (id,))
#         histories = cursor.fetchall()  # Fetch all rows
#         search_queries = [entry[2] for entry in histories]
#         concatenated_string = ', '.join(search_queries)
#         print(concatenated_string)
        
#     except sqlite3.Error as error:
#         print('Error -', error)
        
#     finally:
#         print('SQLite Connection closed')

# def recommend():
#     pass

# create_table() 
# get_search_hostory_from_table('xyz')






# @app.route('/search', methods=['POST'])
# def search():
#     cursor = con.cursor()
#     try:

#         if request.method == 'POST':
#             data = request.get_json()
#             time_stamp = data['search_timestamp']
#             search_query = data['search_query']
#             user_id = data['user_id']
#             cursor.execute("INSERT INTO user_search_history (user_id, search_query, search_timestamp) VALUES (?, ?, ?)",
#                            (user_id, search_query, time_stamp))
#             con.commit() 
#             # Return a response
#             return '',200

#         else:
#             # Handle other HTTP methods if necessary
#             return "Method not allowed", 405
#     except Exception as e:
#         return jsonify({"error": str(e)}), 500
#     finally:
#         cursor.close()

# CREATE_PACKAGE_TABLE = '''CREATE TABLE IF NOT EXISTS travel_packages (
#              uuid TEXT PRIMARY KEY,
#              packageType TEXT,
#              tags TEXT,
#              images TEXT,
#              featuredImage TEXT,
#              vrImage TEXT,
#              description TEXT,
#              latitude REAL,
#              longitude REAL,
#              perHeadPerNight REAL,
#              packageName TEXT,
#              location TEXT,
#              createdAt TEXT,
#              highlights TEXT,
#              discount REAL,
#              favourite INTEGER,
#              inclusive TEXT,
#              isFeatured INTEGER,
#              packageRating REAL)'''

# USER_SEARCH_HISTORY_TABLE = '''CREATE TABLE IF NOT EXISTS user_search_history (
#              id INTEGER PRIMARY KEY AUTOINCREMENT,
#              user_id TEXT,
#              search_query TEXT,
#              search_timestamp TEXT)'''

# GET_USER_SEARCH_HISTORY = '''
# SELECT * FROM user_search_history WHERE user_id = ?
# '''
