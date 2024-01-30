// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_client/features/user/data/model/user_model.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  factory CommentModel({
    required String uname,
    required String profileUrl,
    required String comment,
    required double rating,
  }) = _CommentModel;
  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  static Map<String, dynamic> _toJson(UserModel userModel) =>
      userModel.toDocument();
}
