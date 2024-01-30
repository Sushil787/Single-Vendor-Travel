import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/chat/data/model/latest_message.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';

/// Chat interface class
abstract class ChatRepository {
  /// Chat User
  Future<List<UserModel>> getAllUser();

  /// Get All Latest Chats
  Stream<List<LatestMessageUser>> getAllLatestChats();

  /// Gets Current UniqueId
  String getCurrentUId();

  /// Gets Message With ID
  Stream<List<Message>> getMessageWithID({
    required String? senderID,
    required String? receiverID,
  });

  /// sends Message
  Future<void> sendMessage({
    required String senderId,
    required Message message,
    required UserModel userModel,
  });

  /// Send
  Future<void> sendToken({
    required String route,
    required String title,
    required String body,
    required String token,
  });
}
