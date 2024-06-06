part of 'comment_cubit.dart';

@freezed

/// Comment States
class CommentState with _$CommentState {
  /// Initial State
  const factory CommentState.initial() = Initial;

  /// Loading State
  const factory CommentState.loading() = Loading;

  /// Success State
  const factory CommentState.loaded(
    List<CommentModel> Comments,
  ) = CommentLoaded;

  /// Faliure State
  const factory CommentState.failure(String message) = CommentError;
}
