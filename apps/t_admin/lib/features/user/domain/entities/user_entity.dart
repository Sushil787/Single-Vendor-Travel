/// User Entity Class
class UserEntity {
  ///User Entity Constructor
  const UserEntity({
    this.uname,
    this.email,
    this.uid,
    this.password,
    this.status,
    this.profileUrl,
    this.isAdmin = false,
    this.fcmToken,
  });

  /// username
  final String? uname;

  /// Fcm token
  final String? fcmToken;

  /// is admin
  final bool? isAdmin;

  /// user email
  final String? email;

  /// unique user id
  final String? uid;

  /// user password
  final String? password;

  /// user status
  final bool? status;

  /// user profile url
  final String? profileUrl;
}
