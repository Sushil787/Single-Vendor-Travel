import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/constants/api_constant.dart';
import 'package:t_admin/core/dio/dio_client.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/chat/data/model/latest_message.dart';
import 'package:t_admin/features/chat/domain/repository/chat_remotedata_source.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';

/// User Data Source
@Injectable(as: ChatDataSource)
class ChatDataSourceImpl implements ChatDataSource {
  /// User Remote DataSource Impl
  ChatDataSourceImpl({
    required this.firebaseFirestore,
    required this.firebaseAuth,
    required this.dioClient,
  });

  /// Firebase Firestore Instance
  final FirebaseFirestore firebaseFirestore;

  /// Dio client
  final DioClient dioClient;

  /// Firebase Auth Instance
  final FirebaseAuth firebaseAuth;

  @override
  Future<List<UserModel>> getAllUser() {
    try {
      final userCollection = firebaseFirestore.collection('users');
      return userCollection.get().then(
            (value) => value.docs
                .map(
                  (e) => UserModel.fromSnapshot(
                    e.data(),
                  ),
                )
                .toList(),
          );
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e, stackTrace) {
      debugPrint(stackTrace.toString());
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> sendMessage({
    required String senderId,
    required Message message,
    required UserModel userModel,
  }) async {
    try {
      final listId = [
        senderId,
        message.receiverId,
      ]..sort();

      final chatId = listId.join('_');
      await firebaseFirestore
          .collection('latest_chat')
          .doc(message.receiverId)
          .set(
            LatestMessageUser(
              receiverId: message.receiverId,
              userModel: userModel,
              message: message,
            ).toMap(),
          );
      await firebaseFirestore
          .collection('chats')
          .doc(chatId)
          .collection('messages')
          .add(
            message.toMap(),
          );
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Stream<List<Message>> getMessageWithID({
    required String? senderID,
    required String? receiverID,
  }) {
    try {
      final listId = [senderID, receiverID]..sort();
      final chatId = listId.join('_');
      return firebaseFirestore
          .collection('chats')
          .doc(chatId)
          .collection('messages')
          .orderBy(descending: true, 'timestamp')
          .snapshots()
          .map(
            (event) => event.docs
                .map(
                  (e) => Message.fromSnapshot(e.data()),
                )
                .toList(),
          );
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e, stackTrace) {
      debugPrintStack(stackTrace: stackTrace);
      throw Exception(e.toString());
    }
  }

  @override
  String getCurrentUId() {
    return firebaseAuth.currentUser!.uid;
  }

  @override
  Future<void> sendToken({
    required String route,
    required String title,
    required String body,
    required String token,
  }) async {
    final data = {
      'to': token,
      'notification': {
        'title': title,
        'body': body,
      },
      'data': {
        'route': route,
      },
    };
    await dioClient.request(
      requestType: RequestType.post,
      path: ApiConstant.sendNotificationEndPoint,
      data: data,
    );
  }

  @override
  Stream<List<LatestMessageUser>> getAllLatestChats() {
    try {
      final userCollection = firebaseFirestore.collection('latest_chat');
      userCollection
          .orderBy(descending: true, 'timestamp')
          .snapshots()
          .map((event) {
        return event.docs.map(LatestMessageUser.fromSnapshot).toList();
      }).listen((event) {
        debugPrint(
            event.first.userModel.toString() ?? 'jjjj' 'is message    ',);
      });
      return userCollection
          // .orderBy(descending: true, 'timestamp')
          .snapshots()
          .map((event) => event.docs
              // ignore: unnecessary_lambdas
              .map((e) => LatestMessageUser.fromSnapshot(e))
              .toList(),);
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e, stackTrace) {
      debugPrint(stackTrace.toString());
      throw Exception(e.toString());
    }
  }
}
