import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/chat/data/model/latest_message.dart';
import 'package:t_admin/features/chat/domain/repository/chat_remotedata_source.dart';
import 'package:t_admin/features/chat/domain/repository/chat_repository.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';

/// [ChatRepository] Implementation Class
@Injectable(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  /// User RepoImpl Constructor
  ChatRepositoryImpl({required this.chatDataSource});

  ///
  final ChatDataSource chatDataSource;
  @override
  Future<List<UserModel>> getAllUser() async {
    try {
      final data = await chatDataSource.getAllUser();
      return data;
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  String getCurrentUId() {
    return chatDataSource.getCurrentUId();
  }

  /// sends Message
  @override
  Future<void> sendMessage({
    required String senderId,
    required Message message,
    required UserModel userModel,
  }) {
    return chatDataSource.sendMessage(
      senderId: senderId,
      message: message,
      userModel: userModel,
    );
  }

  @override
  Stream<List<Message>> getMessageWithID({
    required String? senderID,
    required String? receiverID,
  }) {
    try {
      return chatDataSource.getMessageWithID(
        senderID: senderID,
        receiverID: receiverID,
      );
    } on FirebaseException catch (e) {
      throw FirebaseException(code: e.code, plugin: e.plugin);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> sendToken({
    required String route,
    required String title,
    required String body,
    required String token,
  }) async {
    await chatDataSource.sendToken(
      route: route,
      title: title,
      body: body,
      token: token,
    );
  }

  @override
  Stream<List<LatestMessageUser>> getAllLatestChats() {
    return chatDataSource.getAllLatestChats();
  }
}
