import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/chat/data/model/latest_message.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';

/// Chat Remote Data Source
abstract class ChatDataSource {
  /// Auth State Change Stream
  Future<List<UserModel>> getAllUser();

  /// sends Message
  Future<void> sendMessage({
    required String senderId,
    required Message message,
    required UserModel userModel,
  });

  /// Gets message with message id
  Stream<List<Message>> getMessageWithID({
    required String? senderID,
    required String? receiverID,
  });

  /// Gets Current UniqueId
  String getCurrentUId();

  /// Send Fcm
  Future<void> sendToken({
    required String route,
    required String title,
    required String body,
    required String token,
  });

  /// List of Message
  Stream<List<LatestMessageUser>> getAllLatestChats();
}
