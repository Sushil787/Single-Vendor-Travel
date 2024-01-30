part of 'chat_cubit.dart';

/// chat cubit State
sealed class ChatCubitState extends Equatable {
  ///
  const ChatCubitState();

  @override
  List<Object> get props => [];
}

/// chat Initial State
final class ChatCubitInitial extends ChatCubitState {}

/// Chat Loading State
final class ChatLoading extends ChatCubitState {}

/// All User Loaded
final class AllUserChatLoaded extends ChatCubitState {
  ///
  const AllUserChatLoaded({required this.messages});

  /// All Users
  final List<LatestMessageUser> messages;

  @override
  List<Object> get props => [messages];
}

/// User Selected State
final class UserSelectedState extends ChatCubitState {
  ///
  const UserSelectedState({required this.userModel});

  /// Selected User Model
  final UserModel userModel;

  @override
  List<Object> get props => [userModel];
}







/// Error State
final class ChatErrorState extends ChatCubitState {
  ///
  const ChatErrorState({required this.message});

  /// error state
  final String message;
  @override
  List<Object> get props => [message];
}
