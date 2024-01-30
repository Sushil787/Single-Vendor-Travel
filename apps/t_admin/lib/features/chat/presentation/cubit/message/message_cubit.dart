import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/chat/domain/repository/chat_repository.dart';

part 'message_state.dart';

///
@singleton
class MessageCubit extends Cubit<MessageState> {
  ///
  MessageCubit({required this.chatRepository}) : super(MessageInitial());

  /// Chat Repository
  final ChatRepository chatRepository;

  /// Gets Message With Message ID
  void getMessages({
    required String? senderID,
    required String? receiverID,
  }) {
    try {
      emit(MessageLoadingState());
      chatRepository
          .getMessageWithID(senderID: senderID, receiverID: receiverID)
          .listen((event) {
        emit(MessageLoadedState(messages: event));
      });
    } on FirebaseException catch (_) {
      emit(MessageErroState(message: _.code));
    } catch (_) {
      emit(MessageErroState(message: _.toString()));
    }
  }

 
}
