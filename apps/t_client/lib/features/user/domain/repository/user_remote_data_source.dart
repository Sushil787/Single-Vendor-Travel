import 'package:firebase_auth/firebase_auth.dart';
import 'package:t_client/features/user/domain/entities/user_entity.dart';

/// UserRemote Data Source
abstract class UserRemoteDataSource {
  /// Update token
  Future<void> updateToken();

  /// Google Auth
  Future<void> googleAuth();

  /// Create User
  Future<void> getCreateCurrentUser({required UserEntity user});

  ///Forgot Password
  Future<void> forgotPassword({required String email});

  /// return [bool] isSignIn
  Future<bool> isSignIn();

  /// Delete Account
  Future<void> deleteAccount({required String uid});

  /// SignIn User
  Future<void> signIn({required UserEntity user});

  /// Signup User
  Future<void> signUp({required UserEntity user});

  /// SignOut User
  Future<void> signOut();

  /// Updated USer
  Future<void> getUpdateUser({required UserEntity user});

  /// Gets Current UniqueId
  Future<String> getCurrentUId();

  /// Get All User
  Stream<List<UserEntity>> getAllUsers({required UserEntity user});

  /// GetSingle User
  Stream<List<UserEntity>> getSingleUser({required String uid});

  /// Auth State Change Stream
  Stream<User?> authStateChange();

  /// Store Search history
  Future<void> addSearchHistory({required String searchQuery});
}
