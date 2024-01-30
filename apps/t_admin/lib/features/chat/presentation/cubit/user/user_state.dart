// ignore_for_file: public_member_api_docs

part of 'user_cubit.dart';

///
sealed class UserState extends Equatable {
  ///
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserLoaded extends UserState {
  const UserLoaded({required this.users});

  final List<UserModel> users;
  @override
  List<Object> get props => [users];
}

final class UserLoadingErrorState extends UserState {
  const UserLoadingErrorState({required this.message});
  final String message;
  @override
  List<Object> get props => [message];
}
