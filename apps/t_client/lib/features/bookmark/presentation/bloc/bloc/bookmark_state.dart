part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {

  const factory BookmarkState.initial() = Initial;
  const factory BookmarkState.loading() = Loading;
  const factory BookmarkState.loaded({
    required List<TravelPackageModel> bookmarks,
  }) = Loaded;
  const factory BookmarkState.error({required String message}) = Error;
  const factory BookmarkState.success() = Success;}
