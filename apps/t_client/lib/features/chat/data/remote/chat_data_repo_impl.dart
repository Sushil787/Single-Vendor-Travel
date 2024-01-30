import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/chat/data/model/latest_message.dart';
import 'package:t_client/features/chat/data/model/message_model.dart';
import 'package:t_client/features/chat/domain/chat_data_repo.dart';
import 'package:t_client/features/user/data/model/user_model.dart';

@Injectable(as: ChatDataRepository)

/// Chat Data Impl
class ChatDataRepositoryImpl implements ChatDataRepository {
  ///
  ChatDataRepositoryImpl({
    required this.firebaseFirestore,
    required this.firebaseAuth,
  });

  /// Firebase auth instance
  final FirebaseAuth firebaseAuth;

  /// Firestore instance
  final FirebaseFirestore firebaseFirestore;

  @override
  Future<Stream<List<Message>>> getMessages() async {
    try {
      final adminModel = await getAdmin();
      final senderId = firebaseAuth.currentUser!.uid;
      final receiverId = adminModel.uid;

      final listId = [
        senderId,
        receiverId,
      ]..sort();
      final chatId = listId.join('_');
      return firebaseFirestore
          .collection('chats')
          .doc(chatId)
          .collection('messages')
          .orderBy(descending: true, 'timestamp')
          .snapshots()
          .map(
            (event) => event.docs.map(Message.fromSnapshot).toList(),
          );
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  /// Gets Admin
  @override
  Future<AdminModel> getAdmin() async {
    try {
      return await firebaseFirestore.collection('admin').get().then(
            (value) => AdminModel.fromSnapshot(
              value.docs.first,
            ),
          );
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> sendMessage({
    required Message message,
    required UserModel userModel,
  }) async {
    try {
      final adminModel = await getAdmin();
      message
        ..senderId = firebaseAuth.currentUser!.uid
        ..receiverId = adminModel.uid;

      final listId = [
        message.senderId,
        message.receiverId,
      ]..sort();
      final chatId = listId.join('_');
      await firebaseFirestore
          .collection('latest_chat')
          .doc(message.senderId)
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
  String getCurrentUID() {
    try {
      return firebaseAuth.currentUser?.uid ?? '';
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
