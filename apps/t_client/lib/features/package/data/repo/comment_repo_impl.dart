import 'package:injectable/injectable.dart';
import 'package:t_client/features/package/data/model/comment_model.dart';
import 'package:t_client/features/package/domain/repo/comment_data_source.dart';
import 'package:t_client/features/package/domain/repo/comment_repo.dart';

/// Comment Repo Implementation
@Injectable(as: CommentRepo)
class CommentRepoImpl implements CommentRepo {
  ///
  CommentRepoImpl({required this.commendDataSource});

  /// Comment Datasource
  final CommentDataSource commendDataSource;
  @override
  Future<void> addComments({
    required String packageId,
    required String comment,
  }) {
    try {
      final data =
          commendDataSource.addComments(packageId: packageId, comment: comment);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteComment({required String commentId}) {
    try {
      final data = commendDataSource.deleteComment(commentId: commentId);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CommentModel>> getComments({required String packageId}) {
    try {
      final data = commendDataSource.getComments(packageId: packageId);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateComment(
      {required String commentId,
      required String packageId,
      required String message}) {
    try {
      final data = commendDataSource.updateComment(
        packageId: packageId,
        commentId: commentId,
        message: message,
    );
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
