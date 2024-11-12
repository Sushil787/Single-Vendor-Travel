# Travello - Travel Management System

**Travello**  is a travel management system built with Flutter, featuring both a mobile app for clients and a web app for admin management. Firebase serves as the backend, providing real-time updates, authentication, and secure data storage.

- **t_client**: A mobile app for clients to manage their travel bookings, view itineraries, and receive real-time updates. The app is built with Flutter and uses Firebase as the backend for authentication, data storage, and notifications.
- **t_admin**: A web app for admins to manage bookings, oversee client information, and handle app content efficiently. This application is also built with Flutter, providing a cohesive administrative interface for the Travello system.

## Project Structure

- **t_client**: Contains all the code and resources for the client-side mobile application, including:
  - **User Authentication**: Secure user login and sign-up using Firebase Authentication.
  - **Booking Management**: Tools for clients to view, modify, and cancel bookings.
  - **Notifications**: Real-time alerts for booking confirmations, reminders, and travel updates.
  - **Payment Integration**: Secure payment processing through Khalti for seamless in-app transactions.

- **t_admin**: Contains the code and resources for the admin-side web application, featuring:
  - **User and Booking Management**: Allows admins to manage client accounts, bookings, and service offerings.
  - **Content Management**: Tools to manage and update travel packages, destinations, and other app content.
  - **Reporting and Analytics**: Insights on bookings and user activity to aid in business decision-making.

Refer to each folder (`apps/t_client` and `apps/t_admin`) for further documentation and setup instructions tailored to each app.

## For Client and For Adming

## Features
- Client and admin interface
- User authentication and profile management
- Real-time data updates
- Secure file storage for travel documents and profile images
- Geolocation and routing services
- Push notifications for booking updates and alerts

***💻 Built with***
Tools, BASS and Framework used in the project:
*   Flutter
*   Firebase
*   Visual Studio Code
*   Flutter Fire Cli
*   Android Studio



## Getting Started

1. **Flutter SDK**
 Ensure you have Flutter SDK version `>=3.0.5` installed. [Install Flutter](https://flutter.dev/docs/get-started/install) if not already set up.
2. **FlutterFire CLI**
 Install the FlutterFire CLI, which simplifies Firebase configuration for Flutter projects:
   ```bash
   dart pub global activate flutterfire_cli
   ```
3. **Clone the Repository**: Clone this repository to your local machine
    ```bash
    git clone https://github.com/Sushil787/Single-Vendor-Travel.git
    cd travel_management_system/apps
    ```
    Since the project includes both a client app and an admin web app, you need to configure Firebase for both parts of the application.
    ```bash
    cd t_admin or cd t_client
    ```
  
4. **Install Dependencies**
 Install all project dependencies using the following command:
    ```bash
    flutter pub get
      ```
5. **Configure Firebase with FlutterFire CLI**
    ```bash
    flutterfire configure
    ```
    The FlutterFire CLI will generate a firebase_options.dart file with your Firebase configuration. Make sure this file is imported in your main.dart file for Firebase initialization.
6. **Generate Code with build_runner**
    The project uses generated models, Bloc state and event classes for state management. Run the following command to generate necessary files:
    ```bash
    flutter pub run build_runner build --delete-conflicting-outputs
    ```
    This will generate:
    - Models for data management and serialization.
    - State Classes and Bloc Files for managing app state and events. 
    Note: Run this command every time you make changes to models, state, or event classes.

7. **Run the App**
    After configuring Firebase and generating the necessary files, you can now run the app:
    ```bash
    flutter run
    ```


## t_client

## t_admin


## Important Packages

### State Management
- **flutter_bloc**: Used for managing the app's state across different components, ensuring clear state transitions and predictable behaviors.
- **get_it**: Acts as a service locator for dependency injection, helping to manage and retrieve services and data classes from anywhere in the app.

### Networking & API
- **retrofit**: Provides a type-safe HTTP client for making API calls, simplifying communication between the client app and external servers.
- **dio**: Used as the main HTTP client for making network requests, handling everything from GET/POST requests to file uploads and error handling.
- **pretty_dio_logger**: Enhances `dio` with logging capabilities for better debugging of network requests.

### Payment Integration
- **khalti_flutter**: Used for secure payment processing, allowing users to complete transactions directly in the app. Khalti integration ensures a smooth and secure transaction process, providing a trusted payment gateway for users to make online payments for bookings and other services.


### Firebase Integration
- **firebase_auth**: Manages user authentication, enabling sign-in and sign-out flows using Firebase's secure authentication methods.
- **cloud_firestore**: Used for real-time data storage and syncing, allowing users to access data such as bookings, itineraries, and user profiles.
- **firebase_storage**: Stores user-uploaded files, such as profile images or travel documents, securely on Firebase’s cloud storage.
- **firebase_messaging**: Enables push notifications, allowing real-time updates to be sent to users for bookings, offers, and other relevant alerts.

### Location & Mapping
- **geolocator**: Provides real-time location tracking for users, assisting in calculating travel distances or nearby landmarks.
- **open_route_service**: Supplies routing and navigation features within the app, allowing clients to find optimal travel routes and nearby attractions.
- **latlong2**: Handles geographic location data, crucial for mapping functionalities and integrating with various geolocation-based services.
- **flutter_osm_plugin** and **flutter_map**: Used for integrating interactive maps within the app, allowing users to view locations and itineraries visually on a map.

### Data Persistence & Caching
- **hive** and **hive_flutter**: Provides lightweight, offline storage capabilities, which are ideal for storing small data sets like user preferences and session information.
- **shared_preferences**: Used for storing simple key-value pairs such as user preferences or app settings.
- **flutter_cache_manager**: Manages cached network images and other resources, improving performance by avoiding redundant network calls.

### User Interface & Experience
- **google_fonts**: Allows for customizable fonts, enhancing the app’s design and readability.
- **shimmer**: Provides a shimmer loading effect, creating an engaging placeholder while data is being loaded.
- **flutter_svg**: Enables SVG rendering, useful for vector graphics and icons.
- **flutter_screenutil**: Manages responsive UI design across different screen sizes and devices.
- **ticket_widget**: Used for creating visual elements that resemble tickets, adding a travel-themed visual to booking details.
- **panorama_viewer**: Allows users to explore panoramic images, enhancing user engagement with immersive visuals.

### Notifications & Updates
- **flutter_local_notifications**: Handles in-app notifications, allowing timely alerts for booking updates, travel reminders, and more.
- **in_app_update**: Facilitates in-app updates, ensuring users have the latest version of the app without leaving the application.

### Utility Packages
- **image_picker**: Lets users upload profile pictures or document images directly from their camera or gallery.
- **connectivity_plus**: Detects network connectivity, prompting users in case of offline access.
- **uuid**: Used for generating unique IDs, which are essential for data such as bookings or user sessions.
- **screenshot**: Enables users to take screenshots of itineraries or booking details for offline access.

### Code Generation
- **json_serializable** and **json_annotation**: Automatically generate code for serializing and deserializing JSON data, simplifying data exchange between the app and backend.
- **freezed** and **freezed_annotation**: Provides immutable data classes and union types, essential for maintaining a clean data model.
- **injectable** and **injectable_generator**: Helps in dependency injection, making the app modular and testable.
- **build_runner**: A utility for code generation, used alongside `json_serializable`, `retrofit_generator`, and `freezed`.

## Additional Information
To run this project, ensure the required Firebase setup (Firebase Authentication, Firestore, and Firebase Storage) is configured, and dependencies are installed.



### Developer Note

  

- Adhere to coding standards and best practices established in the project.

  

- Thoroughly test new features and changes before integration.

  

- Regularly review and update documentation to reflect changes in the project.

  

---