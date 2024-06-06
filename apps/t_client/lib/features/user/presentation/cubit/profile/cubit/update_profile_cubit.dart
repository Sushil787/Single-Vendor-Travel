import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

part 'update_profile_state.dart';
part 'update_profile_cubit.freezed.dart';

@injectable

/// Update profile cubit
class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  ///
  UpdateProfileCubit({required this.userRepository})
      : super(const UpdateProfileState.initial());

  /// User Repository
  final UserRepository userRepository;

  /// Update Profile
  Future<void> updateProfile({File? image, String? uname}) async {
    try {
      emit(const UpdateProfileState.loading());
      await userRepository.updateProfile(image: image, username: uname);
      emit(const UpdateProfileState.success());
    } catch (e) {
      emit(UpdateProfileState.error(message: e.toString()));
    }
  }
}
