import 'package:firebase_auth/firebase_auth.dart';
import 'package:t_admin/features/user/domain/entities/user_entity.dart';

/// UserRepository interface class
abstract class UserRepository {
  /// Delete Account
  Future<void> deleteAccount({required String uid});

  ///Forgot Password
  Future<void> forgotPassword({required String email});

  /// return [bool] isSignIn
  Future<bool> isSignIn();

  /// SignIn User
  Future<void> signIn({required UserEntity user});

  /// SignOut User
  Future<void> signOut();

  /// Auth State Change Stream
  Stream<User?> authStateChange();

  /// Updated USer
  Future<void> getUpdateUser({required UserEntity user});

  /// Gets Current UniqueId
  String getCurrentUId();

  /// Get Single User
  Stream<List<UserEntity>> getSingleUser({required String uid});

  /// Get Admin Earning
  Future<String?> getEarning();
}
