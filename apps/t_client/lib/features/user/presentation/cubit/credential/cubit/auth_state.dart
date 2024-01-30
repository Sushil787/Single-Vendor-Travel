part of 'auth_cubit.dart';

/// Auth State
abstract class AuthState extends Equatable {
  /// Public constructor
  const AuthState();
}

/// Auth Initial State
class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}



/// Auth Loading State
class AuthLoading extends AuthState {
  @override
  List<Object> get props => [];
}

/// Auth Loading State
class UnAuthenticated extends AuthState {
  @override
  List<Object> get props => [];
}

///  Signup Success State
class SignupSuccess extends AuthState {
  ///Constructor
  @override
  List<Object?> get props => [];
}

///  Auth Success State
class Authenticated extends AuthState {
  ///Constructor
  const Authenticated({required this.uid});

  /// Uid
  final String uid;
  @override
  List<Object> get props => [uid];
}

// /// NoInternet State
// class NoInternetStae extends AuthState {
//   ///
//   const NoInternetStae({required this.message});

//   /// Faliure Messsage
//   final String message;
//   @override
//   List<Object> get props => [message];
// }

/// Auth Faliure State
class AuthFailure extends AuthState {
  ///
  const AuthFailure({required this.message});

  /// Faliure Messsage
  final String message;
  @override
  List<Object> get props => [message];
}
