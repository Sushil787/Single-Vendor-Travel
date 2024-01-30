/// User Entity Class
class UserEntity {
  /// User Entity Constructor
  const UserEntity({
    this.uname,
    this.email,
    this.uid,
    this.password,
    this.status,
    this.profileUrl,
    this.fcmToken,
  });

  /// username
  final String? uname;

  /// token
  final String? fcmToken;

  /// user email
  final String? email;

  /// unique user id
  final String? uid;

  /// user password
  final String? password;

  /// user status
  final String? status;

  /// user profile url
  final String? profileUrl;

  /// CopyWith method for creating a new instance with updated values
  UserEntity copyWith({
    String? uname,
    String? email,
    String? uid,
    String? password,
    String? status,
    String? profileUrl,
    String? fcmToken,
  }) {
    return UserEntity(
      uname: uname ?? this.uname,
      email: email ?? this.email,
      uid: uid ?? this.uid,
      password: password ?? this.password,
      status: status ?? this.status,
      profileUrl: profileUrl ?? this.profileUrl,
      fcmToken: fcmToken ?? this.fcmToken,
    );
  }
}
