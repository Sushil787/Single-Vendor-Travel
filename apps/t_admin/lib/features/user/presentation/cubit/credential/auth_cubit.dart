import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/helper/network_info.dart';
import 'package:t_admin/features/user/domain/entities/user_entity.dart';
import 'package:t_admin/features/user/domain/repository/user_repository.dart';
part 'auth_state.dart';

@singleton

/// Auth Cubit
class AuthCubit extends Cubit<AuthState> {
  /// Auth Cubit
  AuthCubit({
    required this.userRepository,
    required this.networkInfo,
  }) : super(AuthInitial()) {
    authStateChanges();
  }

  /// User Repository
  final UserRepository userRepository;

  /// Network Info
  final NetworkInfo networkInfo;

  /// Forgot password
  Future<void> forgotPassword({required String email}) async {
    try {
      await userRepository.forgotPassword(email: email);
    } on FirebaseException catch (_) {
      emit(AuthFailure(message: _.code));
    } catch (_) {
      emit(AuthFailure(message: _.toString()));
    }
  }

  /// Sign in
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    try {
      if (await networkInfo.isConnected()) {
        await userRepository.signIn(
          user: UserEntity(email: email, password: password),
        );
        final uid = userRepository.getCurrentUId();
        emit(Authenticated(uid: uid));
      } else {
        emit(const AuthFailure(message: 'No Internet Connection'));
      }
    } on FirebaseException catch (_) {
      debugPrint(_.message.toString());
      emit(const AuthFailure(message: 'wrong credentials'));
    } catch (_) {
      debugPrint(_.toString());
      emit(const AuthFailure(message: 'wrong credentials'));
    }
  }

  /// Watches the user auth state
  void authStateChanges() {
    userRepository.authStateChange().listen((event) {
      if (event?.uid != null) {
        emit(Authenticated(uid: event!.uid));
      }
      debugPrint(event?.displayName.toString());
    });
  }

  /// Gets current uid
  String getCurrentId() {
    final uid = userRepository.getCurrentUId();
    return uid;
  }

  /// Sign Out
  Future<void> signOut() async {
    await userRepository.signOut();
    emit(AuthInitial());
  }
}
