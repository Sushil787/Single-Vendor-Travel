import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/chat/domain/repository/chat_repository.dart';

part 'latest_message_state.dart';

///
@singleton
class LatestMessageCubit extends Cubit<LatestMessageState> {
  ///
  LatestMessageCubit({required this.chatRepository})
      : super(LatestMessageInitial());

  ///
  final ChatRepository chatRepository;

  /// Gets Message With Message ID
  void getLatestMessages({
    required String? senderID,
    required String? receiverID,
  }) {
    try {
      chatRepository
          .getMessageWithID(senderID: senderID, receiverID: receiverID)
          .listen((event) {
        if (event.isNotEmpty) {
          emit(LatestMessageLoaded(message: event.first));
        } else {
          // Handle the case when there are no messages
          emit(NoMessagesState());
        }
      });
    } on FirebaseException catch (_) {
      emit(LatestMessageErrorState(message: _.code));
    } catch (_) {
      emit(LatestMessageErrorState(message: _.toString()));
    }
  }
}
