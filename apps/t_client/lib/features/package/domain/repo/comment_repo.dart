import 'package:t_client/features/package/data/model/comment_model.dart';

/// Comment Repo
abstract class CommentRepo {
  /// Get Comments
  Future<List<CommentModel>> getComments({required String packageId});

  /// Add Comment
  Future<void> addComments(
      {required String packageId, required String comment,});

  /// Delete Comment
  Future<void> deleteComment({
    required String commentId,
  });
  /// Update Comment Comment
  Future<void> updateComment({
    required String commentId,
    required String packageId,
    required String message,
  });
}
