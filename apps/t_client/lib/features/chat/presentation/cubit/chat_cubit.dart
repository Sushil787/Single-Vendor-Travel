import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/chat/data/model/message_model.dart';
import 'package:t_client/features/chat/domain/chat_data_repo.dart';
import 'package:t_client/features/user/data/model/user_model.dart';

part 'chat_state.dart';

@injectable

/// Chat Cubit
class ChatCubit extends Cubit<ChatState> {
  ///
  ChatCubit({required this.chatDataRepository}) : super(ChatInitialState());

  /// Chat Repo instance

  final ChatDataRepository chatDataRepository;

  /// Gets Messages
  Future<void> getMessages() async {
    try {
      emit(ChatLoadingState());
      await chatDataRepository.getMessages().then(
            (value) => value.listen(
              (event) {
                emit(ChatLoadedState(messages: event));
              },
            ),
          );
    } on FirebaseException catch (_) {
      emit(ChatErrorState(error: _.code));
    } catch (_) {
      emit(ChatErrorState(error: _.toString()));
    }
  }

  /// Sends Message
  void sendMessages({required Message message, required UserModel userModel}) {
    try {
      chatDataRepository.sendMessage(message: message, userModel: userModel);
    } on FirebaseException catch (_) {
      emit(ChatErrorState(error: _.code));
    } catch (_) {
      emit(ChatErrorState(error: _.toString()));
    }
  }
}
