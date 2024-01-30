// ignore_for_file: public_member_api_docs

import 'package:cloud_firestore/cloud_firestore.dart';

/// Chat Message
class Message {
  ///
  Message({
    required this.message,
     this.receiverId,
    this.timestamp,
    this.id,
    this.senderId,
  });

  /// Factory method to create a Message object from a Firestore document
  /// Snapshot
  factory Message.fromSnapshot(DocumentSnapshot snapshot) {
    final data = snapshot.data()! as Map<String, dynamic>;
    print('Snapshot data: ${snapshot.data()}');
    return Message(
      id: snapshot.id,
      message: data['text'] as String,
      senderId: data['senderId'] as String,
      receiverId: data['receiverId'] as String,
      timestamp: data['timestamp'] as Timestamp,
    );
  }
  final String? id;
  final String message;
  String? senderId;
  String? receiverId;
  Timestamp? timestamp;

  /// Method to convert a Message object to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'text': message,
      'senderId': senderId,
      'receiverId': receiverId,
      'timestamp': Timestamp.now(),
    };
  }
}
