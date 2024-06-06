import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/bookmark/domain/bookmark_repo.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
part 'bookmark_state.dart';
part 'bookmark_bloc.freezed.dart';

@injectable

/// Bookmark Bloc
class BookmarkBloc extends Cubit<BookmarkState> {
  ///
  BookmarkBloc(this.bookmarkRepo) : super(const Initial());

  /// Book Mark Repo
  final BookmarkRepo bookmarkRepo;

  /// Gets BookMarks
  Future<void> getBookMarks() async {
    try {
      emit(const Loading());
      final data = await bookmarkRepo.getBookMarks();
      data.listen((event) {
        if (event.isEmpty) {
          // Handle empty list
          emit(
            const Loaded(
              bookmarks: [],
            ),
          );
        } else {
          emit(BookmarkState.loaded(bookmarks: event));
        }
      });
    } catch (e) {
      emit(BookmarkState.error(
        message: e.toString(),
      ),);
    }
  }

  /// Add Remove Bookmarks
  Future<void> addRemoveBookMarks(TravelPackageModel packageModel) async {
    try {
      emit(const Loading());
      await bookmarkRepo.addRemoveBookMark(travelPackageModel: packageModel);
    } catch (e) {
      emit(BookmarkState.error(
        message: e.toString(),
      ),);
    }
  }
}
