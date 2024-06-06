// ignore_for_file: use_setters_to_change_properties

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/chat/data/model/latest_message.dart';
import 'package:t_admin/features/chat/domain/repository/chat_repository.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';

part 'chat_cubit_state.dart';

/// Chat Cubit
@singleton
class ChatCubit extends Cubit<ChatCubitState> {
  ///
  ChatCubit({required this.chatRepository}) : super(ChatCubitInitial()) {
    selectedUserModel = const UserModel();
  }
  final _selectedUserController = StreamController<UserModel>.broadcast();

  /// Expose a stream that UI can listen to for selected user updates
  Stream<UserModel> get selectedUserStream => _selectedUserController.stream;

  ///
  void selectUser(UserModel userModel) {
    selectedUserModel = userModel;
    _selectedUserController.add(userModel);
  }

  /// Dispose of the StreamController when it's no longer needed

  void dispose() {
    _selectedUserController.close();
  }

  ///
  late UserModel selectedUserModel;

  /// Chat Repository instance
  final ChatRepository chatRepository;


  /// All Latest Chats
  void getAllLatestChats() {
    emit(ChatLoading());
    chatRepository.getAllLatestChats().listen((event) {
      selectedUserModel = event.first.userModel!;
      emit(AllUserChatLoaded(messages: event));
    });
  }

  /// send Messages
  void sendMessage({
    required String senderId,
    required Message message,
    required UserModel userModel,
  }) {
    chatRepository
      ..sendMessage(
        senderId: senderId,
        message: message,
        userModel: userModel,
      )
      ..sendToken(
        route: '/chat',
        title: 'Admin',
        body: message.message ?? '',
        token: userModel.fcmToken ?? '',
      );
  }
}
