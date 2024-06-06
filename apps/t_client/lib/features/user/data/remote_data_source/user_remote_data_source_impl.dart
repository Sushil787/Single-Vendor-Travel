import 'dart:developer';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/core/constants/firebase_collections.dart';
import 'package:t_client/features/user/data/model/user_model.dart';
import 'package:t_client/features/user/domain/entities/user_entity.dart';
import 'package:t_client/features/user/domain/repository/user_remote_data_source.dart';

/// User Data Source
@Injectable(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  /// User Remote DataSource Impl
  UserRemoteDataSourceImpl(
      {required this.firebaseFirestore,
      required this.firebaseAuth,
      required this.googleSignIn,
      required this.firebaseStorage});

  /// Firebase Firestore Instance
  final FirebaseFirestore firebaseFirestore;

  /// FirebaseStorage Instance
  final FirebaseStorage firebaseStorage;

  /// Firebase Auth Instance
  final FirebaseAuth firebaseAuth;

  /// Google SignIn Instance
  final GoogleSignIn googleSignIn;

  @override
  Future<void> forgotPassword({required String email}) async {
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  Stream<List<UserEntity>> getAllUsers({required UserEntity user}) {
    try {
      final userCollection = firebaseFirestore.collection(users);
      return userCollection
          .where(
            'uid',
            isNotEqualTo: user.uid,
          )
          .snapshots()
          .map(
        (querySnapshot) {
          return querySnapshot.docs
              .map(
                UserModel.fromSnapshot,
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
  Future<void> getCreateCurrentUser({required UserEntity user}) async {
    try {
      final userCollection = firebaseFirestore.collection(users);
      final uid = await getCurrentUId();
      await userCollection.doc(uid).get().then((userDoc) {
        if (!userDoc.exists) {
          final newUser = UserModel(
            email: user.email,
            status: user.status,
            uid: uid,
            profileUrl: user.profileUrl,
            uname: user.uname,
          );
          userCollection.doc(uid).set(
                newUser.toDocument(),
              );
        } else {
          log('user already exists');
          return;
        }
      });
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<String> getCurrentUId() async {
    try {
      return firebaseAuth.currentUser!.uid;
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Stream<List<UserEntity>> getSingleUser({required String uid}) {
    try {
      final userCollection = firebaseFirestore.collection(users);
      return userCollection
          .limit(1)
          .where('uid', isEqualTo: uid)
          .snapshots()
          .map(
        (querySnapshot) {
          return querySnapshot.docs
              .map(
                UserModel.fromSnapshot,
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
      final userCollection = firebaseFirestore.collection(users);
      final userInfo = <String, dynamic>{};

      if (user.profileUrl != null && user.profileUrl != '') {
        userInfo['profileUrl'] = user.profileUrl;
      }
      if (user.status != null && user.status != '') {
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
  Future<void> googleAuth() async {
    try {
      final account = await googleSignIn.signIn();
      final googleAuth = await account!.authentication;

      final AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final user =
          (await firebaseAuth.signInWithCredential(authCredential)).user;
      await getCreateCurrentUser(
        user: UserEntity(
          uname: user?.displayName ?? '',
          email: user!.email,
          profileUrl: user.photoURL,
        ),
      );
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      log(e.toString());
      throw Exception(e);
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
      final userCollection = firebaseFirestore.collection(users);

      final userData =
          await userCollection.where('email', isEqualTo: user.email).get();
      if (userData.docs.isEmpty) {
        throw FirebaseAuthException(code: 'user-not-found');
      }
      await firebaseAuth
          .signInWithEmailAndPassword(
            email: user.email!,
            password: user.password!,
          )
          .then(
            (value) => getCreateCurrentUser(user: user),
          );
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
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

  @override
  Future<void> signUp({required UserEntity user}) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
        email: user.email!,
        password: user.password!,
      );
      await getCreateCurrentUser(
        user: UserEntity(
          email: user.email,
          uname: user.uname,
        ),
      );
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
      final userCollection = firebaseFirestore.collection(users);
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
  Future<void> updateToken() async {
    final userCollection = firebaseFirestore.collection(users);
    final token = await FirebaseMessaging.instance.getToken();
    await userCollection
        .doc(firebaseAuth.currentUser!.uid)
        .update({'fcmToken': token});
  }

  @override
  Future<void> addSearchHistory({
    required String searchQuery,
  }) async {
    final search = firebaseFirestore.collection(searchHistory);

    // Check if the searchQuery already exists in the collection
    final uid = firebaseAuth.currentUser!.uid;
    final querySnapshot = await search
        .where('search', isEqualTo: searchQuery)
        .where('uid', isEqualTo: uid)
        .get();
    if (querySnapshot.docs.isEmpty) {
      await search.add({'uid': uid, 'search': searchQuery});
    }
  }

  @override
  Future<void> updateProfile({String? username, File? image}) async {
    try {
      final uid = firebaseAuth.currentUser!.uid;
      final userCollection = firebaseFirestore.collection(users);
      if (image != null && username != null) {
        final downloadUrl = await getDownloadUrl(image);
        await userCollection.doc(uid).update({
          'uname': username,
          'profileUrl': downloadUrl,
        });
        return;
      }
      if (image == null && username != null) {
        await userCollection.doc(uid).update({
          'uname': username,
        });
      }
      if (image != null && username == null) {
        final downloadUrl = await getDownloadUrl(image);
        await userCollection.doc(uid).update({
          'profileUrl': downloadUrl,
        });
        return;
      }
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

/// Retrieves the download URL for a given [File] object.
///
/// The [File] parameter represents the file for which the download URL is needed.
///
/// Returns a [Future] that resolves to a [String] representing the download URL.
Future<String> getDownloadUrl(File image) async {
  final storageRef = FirebaseStorage.instance
      .ref()
      .child('userImage/${image.path.split('/').last}');
  final uploadTask = storageRef.putFile(image);
  final downloadUrl = await (await uploadTask).ref.getDownloadURL();

  return downloadUrl;
}
