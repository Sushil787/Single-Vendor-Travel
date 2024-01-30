// ignore_for_file: prefer_single_quotes

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_admin/features/user/domain/entities/user_entity.dart';

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
  factory UserModel.fromSnapshot(Map<String, dynamic> snapshotMap) {
    return UserModel(
      uname: snapshotMap['uname'] as String?,
      email: snapshotMap['email'] as String?,
      profileUrl: snapshotMap['profileUrl'] as String?,
      uid: snapshotMap['uid'] as String?,
      fcmToken: snapshotMap['fcmToken'] as String?,
    );
  }

  /// [UserModel] to Document [Map] conversion
  Map<String, dynamic> toDocument() {
    return {
      'uname': uname,
      'email': email,
      'profileUrl': profileUrl,
      'status': status,
      'uid': uid,
    };
  }
}

/// Admin Model
class AdminModel extends UserEntity {
  /// User Model Constructor
  const AdminModel({
    super.uname,
    super.email,
    super.uid,
    super.status,
    super.profileUrl,
    super.isAdmin = false,
  });

  /// SnapShot [Map] to [UserModel] conversion
  factory AdminModel.fromSnapshot(DocumentSnapshot snapshot) {
    final snapshotMap = snapshot.data()! as Map<String, dynamic>;
    return AdminModel(
      isAdmin: snapshotMap['isAdmin'] as bool,
      status: snapshotMap["status"] as bool?,
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
      'status': status,
      'uid': uid,
    };
  }
}
