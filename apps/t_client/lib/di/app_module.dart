
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:t_client/core/constants/api_constant.dart';

/// App Module
@module
abstract class AppModule {
  /// Firestore auth
  @singleton
  FirebaseFirestore get store => FirebaseFirestore.instance;

  /// Dio module
  @singleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: baseUrl,
          contentType: 'application/json',
          headers: {
            'Content-Type': 'application/json',
          },
          receiveDataWhenStatusError: true,
        ),
      )..interceptors.addAll(
          [
            if (kDebugMode)
              PrettyDioLogger(
                requestHeader: true,
                requestBody: true,
                responseHeader: true,
              ),
          ],
        );

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
