import 'package:t_client/features/chat/data/model/message_model.dart';
import 'package:t_client/features/user/data/model/user_model.dart';

/// Chat Remote Data Source
abstract class ChatDataRepository {
  /// sends Message
  Future<void> sendMessage({
    required Message message,
    required UserModel userModel,
  });

  /// Gets message with message id
  Future<Stream<List<Message>>> getMessages();

  /// Gets Admin
  Future<AdminModel> getAdmin();

  /// Get Current UID
  String getCurrentUID();
}
