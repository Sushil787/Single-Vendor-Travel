import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/core/constants/firebase_collections.dart';
import 'package:t_client/features/package/data/model/comment_model.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/domain/repo/comment_data_source.dart';
import 'package:uuid/uuid.dart';

/// Comment DataSource Implementation
@Injectable(as: CommentDataSource)
class CommentDataSourceImpl implements CommentDataSource {
  /// Constructor
  CommentDataSourceImpl({
    required this.firebaseAuth,
    required this.firebaseFirestore,
  });

  /// Firebase Auth Instance
  final FirebaseAuth firebaseAuth;

  /// Firebase firestore Instance
  final FirebaseFirestore firebaseFirestore;

  /// Get Comments
  @override
  Future<List<CommentModel>> getComments({required String packageId}) async {
    try {
      final data = await firebaseFirestore
          .collection(comments)
          .where('packageId', isEqualTo: packageId)
          .get();
      final userComments =
          data.docs.map((e) => CommentModel.fromJson(e.data())).toList();
      return userComments;
    } catch (e) {
      rethrow;
    }
  }
  // Future<List<CommentModel>> getComments({required String packageId}) async {
  //   try {
  //      List<CommentModel> comments = [];
  //        final data = firebaseFirestore
  //         .collection(pakcages)
  //         .orderBy('createdAt', descending: false)
  //         .snapshots();
  //     final packages = data.map(
  //       (event) => event.docs
  //           .map((e) => TravelPackageModel.fromJson(e.data()))
  //           .toList(),
  //     );

  //     }

  //     return comments;
  //   } catch (e) {}
  // }

  /// Add Comment
  @override
  Future<void> addComments(
      {required String packageId, required String comment}) async {
    try {
      const uuid = Uuid();
      final commentId = uuid.v4();
      final user = firebaseAuth.currentUser;
      await firebaseFirestore.collection(comments).add(
            CommentModel(
              commentId: commentId,
              uuid: user?.uid ?? '',
              packageId: packageId,
              uname: user?.displayName ?? '',
              profileUrl: user?.photoURL,
              comment: comment,
            ).toJson(),
          );
      await getComments(packageId: packageId);
    } catch (e) {
      try {} catch (e) {
        rethrow;
      }
    }
  }

  /// Delete Comment
  @override
  Future<void> deleteComment({
    required String commentId,
  }) async {
    final data = await firebaseFirestore
        .collection(comments)
        .where('commentId', isEqualTo: commentId)
        .get();
    await data.docs.first.reference.delete();

    try {} catch (e) {
      rethrow;
    }
  }
}
