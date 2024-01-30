part of 'chat_cubit.dart';

/// cC
sealed class ChatState extends Equatable {
  ///
  const ChatState();

  @override
  List<Object> get props => [];
}

/// Chat Initial State
final class ChatInitialState extends ChatState {}

/// Chat Loading State
final class ChatLoadingState extends ChatState {}

/// chat Loaded State
final class ChatLoadedState extends ChatState {
  ///
  const ChatLoadedState({required this.messages});
  /// Messages
  final List<Message> messages;
  @override
  List<Object> get props => [messages];
}

/// ChatError State
final class ChatErrorState extends ChatState {
   ///
  const ChatErrorState({required this.error});
  /// Messages
  final String error;
  @override
  List<Object> get props => [error];
}
