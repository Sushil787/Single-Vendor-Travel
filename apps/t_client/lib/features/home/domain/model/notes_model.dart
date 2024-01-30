import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:t_client/features/user/data/model/user_model.dart';

/// Note Model
class NoteModel {
  /// Public Constructor
  NoteModel({
    required this.title,
    required this.body,
    required this.id,
    this.imageUrl,
  });

  /// [DocumentSnapshot] To [NoteModel]
  factory NoteModel.fromJson(DocumentSnapshot snapshot) {
    final json = snapshot.data()! as Map<String, dynamic>;
    return NoteModel(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      imageUrl: json['imageUrl'] as String?,
    );
  }

  /// Note Title
  String? title;

  /// Note id
  String? id;

  /// Note Body
  String? body;

  /// Note image url
  String? imageUrl;

  /// [UserModel] to Document
  Map<String, dynamic> toDocument() {
    return {
      'title': title,
      'body': body,
      'imageUrl': imageUrl,
      'id': id,
    };
  }

  /// Copy with method
  NoteModel copyWith({
    String? title,
    String? body,
    String? imageUrl,
    String? id,
  }) {
    return NoteModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }
}
