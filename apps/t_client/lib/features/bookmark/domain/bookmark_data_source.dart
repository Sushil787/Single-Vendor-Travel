import 'package:t_client/features/package/data/model/travel_package_model.dart';

/// Book Mark Datasource repository
abstract class BookmarkDataSource {
  /// Returns List of [TravelPackageModel]
  Future<Stream<List<TravelPackageModel>>> getBookMarks();

  /// Adds Bookmark
  Future<void> addRemoveBookMark(
      {required TravelPackageModel travelPackageModel});
}
