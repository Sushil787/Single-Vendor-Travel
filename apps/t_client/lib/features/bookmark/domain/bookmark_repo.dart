import 'package:t_client/features/package/data/model/travel_package_model.dart';

/// Bookmark repository
abstract class BookmarkRepo {
  /// Returns List of [TravelPackageModel]
  Future<Stream<List<TravelPackageModel>>> getBookMarks();

  /// Adds Bookmark
  Future<void> addRemoveBookMark({
    required TravelPackageModel travelPackageModel,
  });
}
