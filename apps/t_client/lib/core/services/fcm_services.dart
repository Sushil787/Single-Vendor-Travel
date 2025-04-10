import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:t_client/core/constants/app_constants.dart';
import 'package:t_client/core/services/notification_service.dart';

/// FCM services
class FcmServices {
  static final FirebaseMessaging _firebaseMessaging =
      FirebaseMessaging.instance;

  /// Initialize the firebase settings
  static void initializeFirebase() {
    _firebaseMessaging.requestPermission();
    
    /// Subscription for topics
    FirebaseMessaging.instance.subscribeToTopic(AppConstants.topic);

    /// Listen to Background Messages even after the app is closed
    FirebaseMessaging.onBackgroundMessage(handleBackground);
    FirebaseMessaging.onMessage.listen((event) {
      NotificationService.sendNotification(
        title: event.notification?.title ?? '',
        body: event.notification?.body ?? '',
      );
    });

    /// Listen message in app close state not terminated state
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      NotificationService.sendNotification(
        title: event.notification?.title ?? '',
        body: event.notification?.body ?? '',
      );
    });
  }
}

/// Handle Background Message
Future<void> handleBackground(RemoteMessage message) async {
  await NotificationService.sendNotification(
    title: message.notification!.title!,
    body: message.notification!.body!,
  );
}
