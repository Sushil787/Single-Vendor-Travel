import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/core/constants/firebase_collections.dart';
import 'package:t_client/features/bookmark/domain/bookmark_data_source.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

/// Bookmark data source implementation
@Injectable(as: BookmarkDataSource)
class BookmarkDataSourceImpl implements BookmarkDataSource {
  ///
  BookmarkDataSourceImpl(
    this.userRepository, {
    required this.firebaseFirestore,
  });

  /// Firebase Firestore instance
  final FirebaseFirestore firebaseFirestore;

  /// UserRepository
  final UserRepository userRepository;

  @override
  Future<void> addRemoveBookMark({
    required TravelPackageModel travelPackageModel,
  }) async {
    try {
      final uid = await userRepository.getCurrentUId();
      final doc = await firebaseFirestore
          .collection(bookMarks)
          .doc(uid)
          .collection(userBookMarks)
          .where('uuid', isEqualTo: travelPackageModel.uuid)
          .get();

      /// Here dont directly add id of travel package coz when you add docs
      /// instance
      /// to firestore
      /// it will not update the reviews and favourite ok.
      if (doc.docs.isEmpty) {
        await firebaseFirestore
            .collection(bookMarks)
            .doc(uid)
            .collection(userBookMarks)
            .add(travelPackageModel.copyWith(favourite: 1).toJson());
        await updateCount(travelPackageModel.uuid, 1);

        return;
      }
      final docs = await firebaseFirestore
          .collection(bookMarks)
          .doc(uid)
          .collection(userBookMarks)
          .where('uuid', isEqualTo: travelPackageModel.uuid)
          .get();
      await updateCount(travelPackageModel.uuid, -1);
      for (final element in docs.docs) {
        await element.reference.delete();
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Update count of favourite
  Future<void> updateCount(String uuid, int count) async {
    try {
      final snapshot = await firebaseFirestore
          .collection(
            pakcages,
          )
          .where('uuid', isEqualTo: uuid)
          .get();

      if (snapshot.docs.isNotEmpty) {
        final doc = snapshot.docs.first;
        final currentCount = int.tryParse(doc['favourite'].toString()) ?? 0;
        // Default to 0 if 'favourite' field doesn't exist

        await doc.reference.update({'favourite': currentCount + count});
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Gets BookMarks
  @override
  Future<Stream<List<TravelPackageModel>>> getBookMarks() async {
    try {
      final uid = await userRepository.getCurrentUId();
      return firebaseFirestore
          .collection(bookMarks)
          .doc(uid)
          .collection(userBookMarks)
          .snapshots()
          .map(
            (event) => event.docs.map(
              (e) {
                return TravelPackageModel.fromJson(e.data());
              },
            ).toList(),
          );
    } catch (e) {
      rethrow;
    }
  }
}
