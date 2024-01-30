part of 'profile_cubit.dart';

/// Single User State
abstract class ProfileState extends Equatable {
  ///
  const ProfileState();
}

/// Initial State
class ProfileInitial extends ProfileState {
  @override
  List<Object> get props => [];
}

/// Account delete success state
class AccDeleteSuccess extends ProfileState {
  ///
  const AccDeleteSuccess({required this.message});

  /// Faliure Messsage
  final String message;
  @override
  List<Object> get props => [message];
}

/// Loading State
class ProfileLoading extends ProfileState {
  @override
  List<Object> get props => [];
}

/// Single User Loaded State
class ProfileLoaded extends ProfileState {
  ///
  const ProfileLoaded({required this.currentUser});

  /// Current User
  final UserEntity currentUser;

  @override
  List<Object> get props => [currentUser];
}

/// Faliure State
class ProfileFailure extends ProfileState {
  ///
  const ProfileFailure({required this.message});

  /// Error Message
  final String message;
  @override
  List<Object> get props => [message];
}
