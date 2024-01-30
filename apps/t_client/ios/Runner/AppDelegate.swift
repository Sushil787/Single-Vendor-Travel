import UIKit
import Flutter
import Firebase
import FirebaseMessaging
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      Firebase.configure()
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    override func application(_ application: UIApplication, didRegisterForRemoteNotificationForDeviceToken deviceToken:Data){
        Messaging.messaging().aspnToken = deviceToken;
        print("Token : \(deviceToken)")
        return super.application(application, didRegisterForRemoteNotificationForDeviceToken: deviceToken)
    }
}
