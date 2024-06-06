import 'package:firebase_auth/firebase_auth.dart';
import 'package:t_client/features/user/domain/entities/user_entity.dart';

/// UserRepository interface class
abstract class UserRepository {
  /// Update Token
  Future<void> updateToken();

  /// Google Auth
  Future<void> googleAuth();

  /// Delete Account
  Future<void> deleteAccount({required String uid});

  /// Create User
  Future<void> getCreateCurrentUser({required UserEntity user});

  ///Forgot Password
  Future<void> forgotPassword({required String email});

  /// return [bool] isSignIn
  Future<bool> isSignIn();

  /// SignIn User
  Future<void> signIn({required UserEntity user});

  /// Signup User
  Future<void> signUp({required UserEntity user});

  /// SignOut User
  Future<void> signOut();

  /// Auth State Change Stream
  Stream<User?> authStateChange();

  /// Updated USer
  Future<void> getUpdateUser({required UserEntity user});

  /// Gets Current UniqueId
  Future<String> getCurrentUId();

  /// Get All User
  Stream<List<UserEntity>> getAllUsers({required UserEntity user});

  /// Get Single User
  Stream<List<UserEntity>> getSingleUser({required String uid});

  /// Store Search history
  Future<void> addSearchHistory({required String searchQuery});
}
