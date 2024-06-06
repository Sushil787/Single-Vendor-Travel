import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';
import 'package:t_admin/features/user/domain/entities/user_entity.dart';
import 'package:t_admin/features/user/domain/repository/user_remote_data_source.dart';

/// User Data Source
@Injectable(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  /// User Remote DataSource Impl
  UserRemoteDataSourceImpl({
    required this.firebaseFirestore,
    required this.firebaseAuth,
  });

  /// Firebase Firestore Instance
  final FirebaseFirestore firebaseFirestore;

  /// Firebase Auth Instance
  final FirebaseAuth firebaseAuth;

  @override
  Future<void> forgotPassword({required String email}) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  String getCurrentUId() {
    try {
      final uid = firebaseAuth.currentUser!.uid;
      return uid;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Stream<List<UserEntity>> getSingleUser({required String uid}) {
    try {
      final userCollection = firebaseFirestore.collection('admin');
      return userCollection
          .limit(1)
          .where('uid', isEqualTo: uid)
          .snapshots()
          .map(
        (querySnapshot) {
          debugPrint(querySnapshot.docs.first.data().toString());
          return querySnapshot.docs
              .map(
                AdminModel.fromSnapshot,
              )
              .toList();
        },
      );
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> getUpdateUser({required UserEntity user}) async {
    try {
      final userCollection = firebaseFirestore.collection('admin');
      final userInfo = <String, dynamic>{};

      if (user.profileUrl != null && user.profileUrl != '') {
        userInfo['profileUrl'] = user.profileUrl;
      }
      if (user.status != null) {
        userInfo['status'] = user.status;
      }
      if (user.uname != null && user.uname != '') {
        userInfo['uname'] = user.uname;
      }
      await userCollection.doc(user.uid).update(userInfo);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<bool> isSignIn() async {
    try {
      return firebaseAuth.currentUser?.uid != null;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signIn({required UserEntity user}) async {
    try {
      final userCollection = firebaseFirestore.collection('admin');

      final userData =
          await userCollection.where('email', isEqualTo: user.email).get();
      if (!userData.docs.first.exists) {
        throw FirebaseAuthException(code: 'user-not-found'.replaceAll('-', ''));
      }
      await firebaseAuth
          .signInWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      )
          .then((value) {
        return;
      });
    } on FirebaseAuthException catch (e) {
      debugPrint(
        '$e----------------------------------------------------------------',
      );
      throw FirebaseAuthException(message: e.message, code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Auth State Change
  @override
  Stream<User?> authStateChange() {
    try {
      return firebaseAuth.authStateChanges();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> deleteAccount({required String uid}) async {
    try {
      final userCollection = firebaseFirestore.collection('admin');
      // Delete notes subcollection for the user
      final userNotesCollection = userCollection.doc(uid).collection('notes');
      final userNotesQuerySnapshot = await userNotesCollection.get();
      for (final noteSnapshot in userNotesQuerySnapshot.docs) {
        await noteSnapshot.reference.delete();
      }
      await userCollection.doc(uid).delete();
      await firebaseAuth.signOut();
      await firebaseAuth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<String?> getEarning() async {
    try {
      final data = await firebaseFirestore.collection('admin').get();
      final earning = data.docs.first.data()['earning'];
      log(name: 'earning is ', earning.toString());
      return double.parse(earning.toString()).toStringAsFixed(2);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
