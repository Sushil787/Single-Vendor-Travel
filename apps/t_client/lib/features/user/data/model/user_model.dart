import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_client/features/user/domain/entities/user_entity.dart';

/// User Model
class UserModel extends UserEntity {
  /// User Model Constructor
  const UserModel({
    super.uname,
    super.email,
    super.uid,
    super.status,
    super.profileUrl,
    super.fcmToken,
  });

  /// SnapShot [Map] to [UserModel] conversion
  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    final snapshotMap = snapshot.data()! as Map<String, dynamic>;
    return UserModel(
      fcmToken: snapshotMap['fcmToken'] as String?,
      uname: snapshotMap['uname'] as String,
      email: snapshotMap['email'] as String,
      profileUrl: snapshotMap['profileUrl'] as String?,
      uid: snapshotMap['uid'] as String,
    );
  }

  /// [UserModel] to Document [Map] conversion
  Map<String, dynamic> toDocument() {
    return {
      'uname': uname,
      'fcmToken': fcmToken,
      'email': email,
      'profileUrl': profileUrl,
      'status': status,
      'uid': uid,
    };
  }
}

/// User Model
class AdminModel extends UserEntity {
  /// User Model Constructor
  const AdminModel({
    super.uname,
    super.email,
    super.uid,
    super.profileUrl,
  });

  /// SnapShot [Map] to [UserModel] conversion
  factory AdminModel.fromSnapshot(DocumentSnapshot snapshot) {
    final snapshotMap = snapshot.data()! as Map<String, dynamic>;
    return AdminModel(
      uname: snapshotMap['uname'] as String,
      email: snapshotMap['email'] as String?,
      profileUrl: snapshotMap['profileUrl'] as String?,
      uid: snapshotMap['uid'] as String,
    );
  }

  /// [UserModel] to Document [Map] conversion
  Map<String, dynamic> toDocument() {
    return {
      'uname': uname,
      'email': email,
      'profileUrl': profileUrl,
      'uid': uid,
    };
  }
}
