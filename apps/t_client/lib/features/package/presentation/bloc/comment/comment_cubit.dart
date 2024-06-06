import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/package/data/model/comment_model.dart';
import 'package:t_client/features/package/domain/repo/comment_repo.dart';

part 'comment_state.dart';
part 'comment_cubit.freezed.dart';

@injectable

/// Comment Cubit
class CommentCubit extends Cubit<CommentState> {
  ///
  CommentCubit({required this.commentRepo})
      : super(
          const CommentState.initial(),
        );

  /// Comment Repository
  final CommentRepo commentRepo;

  /// Get All Comments
  Future<void> getComments({required String packageId}) async {
    try {
      final data = await commentRepo.getComments(packageId: packageId);
      emit(CommentState.loaded(data));
    } catch (e) {
      emit(CommentState.failure(e.toString()));
    }
  }

  /// Get All Comments
  Future<void> updateComment({
    required String commentId,
    required String packageId,
    required String message,
  }) async {
    try {
      final data = await commentRepo.updateComment(
          packageId: packageId, commentId: commentId, message: message,);
      await getComments(packageId: packageId);
    } catch (e) {
      emit(CommentState.failure(e.toString()));
    }
  }

  /// Add Comments
  Future<void> addComment({
    required String packageId,
    required String comment,
  }) async {
    try {
      await commentRepo.addComments(comment: comment, packageId: packageId);
      await getComments(packageId: packageId);
    } catch (e) {
      emit(CommentState.failure(e.toString()));
    }
  }

  /// Add Comments
  Future<void> deleteComment({
    required String commentId,
    required String packageId,
  }) async {
    try {
      await commentRepo.deleteComment(commentId: commentId);
      await getComments(packageId: packageId);
    } catch (e) {
      emit(CommentState.failure(e.toString()));
    }
  }
}
