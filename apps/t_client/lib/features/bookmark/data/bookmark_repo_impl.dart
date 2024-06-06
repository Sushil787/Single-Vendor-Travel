import 'package:injectable/injectable.dart';
import 'package:t_client/features/bookmark/domain/bookmark_data_source.dart';
import 'package:t_client/features/bookmark/domain/bookmark_repo.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';

/// Bookmark Repo Impllementation
@Injectable(as: BookmarkRepo)
class BookmarkRepoImpl implements BookmarkRepo {
  ///
  BookmarkRepoImpl({required this.bookmarkDataSource});

  /// Book Mark Data Source
  final BookmarkDataSource bookmarkDataSource;
  @override
  Future<void> addRemoveBookMark({
    required TravelPackageModel travelPackageModel,
  }) async {
    try {
      return await bookmarkDataSource.addRemoveBookMark(
        travelPackageModel: travelPackageModel,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Stream<List<TravelPackageModel>>> getBookMarks() async {
    try {
      return await bookmarkDataSource.getBookMarks();
    } catch (e) {
      rethrow;
    }
  }
}
