// ignore_for_file: public_member_api_docs

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/chat/domain/repository/chat_repository.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';

part 'user_state.dart';

///
@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit({required this.chatRepository}) : super(UserInitial()) {
    numberOfUser = 0;
  }
  final ChatRepository chatRepository;

  late int numberOfUser;

  /// Gets All user[UserModel] from firestore
  Future<void> getAllUser() async {
    try {
      emit(UserLoading());
      final data = await chatRepository.getAllUser();
      numberOfUser = data.length;
      emit(UserLoaded(users: data));
    } on FirebaseException catch (_) {
      emit(UserLoadingErrorState(message: _.code));
    } catch (_) {
      emit(UserLoadingErrorState(message: _.toString()));
    }
  }
}
