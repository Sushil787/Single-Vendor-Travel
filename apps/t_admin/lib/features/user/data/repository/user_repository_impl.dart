import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/user/domain/entities/user_entity.dart';
import 'package:t_admin/features/user/domain/repository/user_remote_data_source.dart';
import 'package:t_admin/features/user/domain/repository/user_repository.dart';

@Injectable(as: UserRepository)

/// [UserRepository] Implementation Class
class UserRepositoryImpl implements UserRepository {
  /// User RepoImpl Constructor
  UserRepositoryImpl({required this.userRemoteDataSource});

  /// UserRemoteDataSource Instance
  final UserRemoteDataSource userRemoteDataSource;

  @override
  Future<void> forgotPassword({required String email}) {
    try {
      return userRemoteDataSource.forgotPassword(email: email);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }


  @override
  String getCurrentUId() {
    try {
      return userRemoteDataSource.getCurrentUId();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Stream<User?> authStateChange() {
    try {
      return userRemoteDataSource.authStateChange();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Stream<List<UserEntity>> getSingleUser({required String uid}) {
    try {
      return userRemoteDataSource.getSingleUser(uid: uid);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> getUpdateUser({required UserEntity user}) async {
    try {
      return await userRemoteDataSource.getUpdateUser(user: user);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<bool> isSignIn() async {
    try {
      return await userRemoteDataSource.isSignIn();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signIn({required UserEntity user}) async {
    try {
      return await userRemoteDataSource.signIn(user: user);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      return await userRemoteDataSource.signOut();
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> deleteAccount({required String uid}) async {
    try {
      await userRemoteDataSource.deleteAccount(uid: uid);
    } on FirebaseAuthException catch (e) {
      throw FirebaseAuthException(code: e.code);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
