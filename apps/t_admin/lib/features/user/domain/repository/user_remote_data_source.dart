import 'package:firebase_auth/firebase_auth.dart';
import 'package:t_admin/features/user/domain/entities/user_entity.dart';

/// UserRemote Data Source
abstract class UserRemoteDataSource {
  ///Forgot Password
  Future<void> forgotPassword({required String email});

  /// return [bool] isSignIn
  Future<bool> isSignIn();

  /// Delete Account
  Future<void> deleteAccount({required String uid});

  /// SignIn User
  Future<void> signIn({required UserEntity user});

  /// SignOut User
  Future<void> signOut();

  /// Updated USer
  Future<void> getUpdateUser({required UserEntity user});

  /// Gets Current UniqueId
  String getCurrentUId();

  /// GetSingle User
  Stream<List<UserEntity>> getSingleUser({required String uid});

  /// Auth State Change Stream
  Stream<User?> authStateChange();

  /// Get Admin Earning
  Future<String?> getEarning();
}
