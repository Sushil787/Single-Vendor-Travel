import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
/// Comment Model
class CommentModel with _$CommentModel {
  /// 
  factory CommentModel({
    required String commentId,
    required String uuid,
    required String packageId,
    required String uname,
    required String comment,
    @Default(null)  String? profileUrl,
  }) = _CommentModel;

/// Returns [CommentModel] from json
  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  
}
