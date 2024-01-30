import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/helper/network_info.dart';
import 'package:t_admin/features/user/domain/entities/user_entity.dart';
import 'package:t_admin/features/user/domain/repository/user_repository.dart';

part 'profile_state.dart';

@injectable

/// Single User Cubit
class ProfileCubit extends Cubit<ProfileState> {
  /// Constructor
  ProfileCubit({
    required this.userRepository,
    required this.networkInfo,
  }) : super(ProfileInitial());

  /// User Repository
  final UserRepository userRepository;

  /// Network Info
  final NetworkInfo networkInfo;

  /// Delete Account
  Future<void> deleteAccount({required String uid}) async {
    try {
      if (await networkInfo.isConnected()) {
        emit(ProfileLoading());
        await userRepository.deleteAccount(uid: uid);
        emit(const AccDeleteSuccess(message: 'Account delete success'));
      } else {
        emit(const ProfileFailure(message: 'No Internet Connection'));
      }
    } on FirebaseException catch (_) {
      emit(ProfileFailure(message: _.code));
    } catch (_) {
      emit(ProfileFailure(message: _.toString()));
    }
  }
  

  /// Gets The User Profile
  Future<void> getProfileProfile({required String uid}) async {
    emit(ProfileLoading());
    try {
      userRepository.getSingleUser(uid: uid).listen((user) {
        if (user.isNotEmpty) {
          /// Check if the 'user' list is not empty before accessing its first
          /// element
          emit(ProfileLoaded(currentUser: user.first));
        } else {
          emit(
            const ProfileFailure(
              message: 'User not found.',
            ),
          ); // Handle the case when 'user' list is empty
        }
      });
    } on FirebaseException catch (_) {
      emit(ProfileFailure(message: _.code));
    } catch (_) {
      emit(ProfileFailure(message: _.toString()));
    }
  }
}
