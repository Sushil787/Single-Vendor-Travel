import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// App Module
@module
abstract class AppModule {
  /// Firestore auth
  @singleton
  FirebaseFirestore get store => FirebaseFirestore.instance;

  /// FirebaseAuth
  @singleton
  FirebaseAuth get auth => FirebaseAuth.instance;

  /// Google Sign in instance
  @singleton
  GoogleSignIn get googleSignin => GoogleSignIn();

  /// Fireabse Storage
  @singleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
}

/// Singleton Shared preferences class
@module
abstract class SharedPrefsInjectionModule {
  /// preresolve shared preferences
  @preResolve
  Future<SharedPreferences> get prefs async => SharedPreferences.getInstance();
}
