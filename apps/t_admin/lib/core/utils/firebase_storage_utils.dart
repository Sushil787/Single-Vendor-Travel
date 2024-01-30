import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v1.dart';

@injectable
class FirebaseStorageUitls {
  FirebaseStorageUitls({required this.firebaseStorage});

  final FirebaseStorage firebaseStorage;
  Future<String> uploadImage({
    required String packageId,
    required Uint8List image,
  }) async {
    try {
      final storage = firebaseStorage.ref('/$packageId/images');
      const uid = Uuid();

      final metadata = SettableMetadata(
        contentType: 'image/*',
        // customMetadata: {'picked-file-path': },
      );

      final uploadTask =
          await storage.child('${uid.v4()}.jpg').putData(image, metadata);

      return await uploadTask.ref.getDownloadURL();
    } on FirebaseException catch (e) {
      print('FirebaseException: $e');
      rethrow;
    } on Exception {
      rethrow;
    }
  }

  Future<List<String>> uploadMultipleImagesToFirebase({
    required String packageId,
    required List<Uint8List> images,
  }) async {
    final downloadUrls = <String>[];

    try {
      final storage = firebaseStorage.ref('/$packageId/images');
      for (final image in images) {
        const uid = Uuid();
        final metadata = SettableMetadata(
          contentType: 'image/*',
        );
        final uploadTask =
            storage.child('${uid.v4()}.jpg').putData(image, metadata);
        final snapshot = await uploadTask;

        if (snapshot.state == TaskState.success) {
          final downloadUrl = await snapshot.ref.getDownloadURL();
          downloadUrls.add(downloadUrl);
        }
      }

      return downloadUrls;
    } on FirebaseException catch (e) {
      print('FirebaseException: $e');
      rethrow;
    } on Exception {
      rethrow;
    }
  }
}
