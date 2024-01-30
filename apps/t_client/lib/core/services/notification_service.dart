import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

/// Notification Service
class NotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Android initialization Setting
  static AndroidInitializationSettings androidInitializationSettings =
      const AndroidInitializationSettings(
    'logo',
  );

  /// Initialize Notification
  static Future<void> initialize() async {
    final initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
    );
    await _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestNotificationsPermission();
    await _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: onSelectNotification,
      onDidReceiveNotificationResponse: onSelectNotification,
    );
  }

  /// Sends Notification
  static Future<void> sendNotification( {
    required String title,
    required String body,
  }) async {
    const androidNotificationDetails = AndroidNotificationDetails(
      'channelId',
      'channelName',
      priority: Priority.high,
      importance: Importance.high,
    );
    const notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await _notificationsPlugin.show(0, title, body, notificationDetails);
  }

  /// On user Select Notification
  static void onSelectNotification(NotificationResponse response) {
    if (response.payload != null || response.payload!.isNotEmpty) {
      debugPrint('Notification clicked');
    } else {
      debugPrint('null Notification clicked');
    }
  }
}
