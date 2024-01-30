import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';

/// Latest Message User
class LatestMessageUser {
  /// Constructor
  LatestMessageUser({
    required this.receiverId,
    required this.userModel,
    required this.message,
    this.timestamp,
  });

  /// Factory method to create a LatestMessageUser object from a Firestore document
  ///  Snapshot
  factory LatestMessageUser.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data()! as Map<String, dynamic>;
    return LatestMessageUser(
      receiverId: data['receiverId'] as String?,
      userModel: UserModel.fromSnapshot(
        data['userModel'] as Map<String, dynamic>,
      ),
      message: Message.fromSnapshot(
        data['message'] as Map<String, dynamic>,
      ),
      timestamp: data['timestamp'] as Timestamp?,
    );
  }

  /// Receiver id
  final String? receiverId;

  /// User model
  final UserModel? userModel;

  /// Message
  final Message? message;

  /// Timestamp
  final Timestamp? timestamp;

  /// Method to convert a LatestMessageUser object to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'receiverId': receiverId,
      'userModel':
          userModel?.toDocument(), // Assuming UserModel has toDocument method
      'message': message?.toMap(), // Assuming Message has toMap method
      'timestamp': Timestamp.now(),
    };
  }
}
