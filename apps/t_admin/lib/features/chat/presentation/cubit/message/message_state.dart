part of 'message_cubit.dart';

///
sealed class MessageState extends Equatable {
  ///
  const MessageState();

  @override
  List<Object> get props => [];
}

/// Message Initial State
final class MessageLoadingState extends MessageState {}

/// Message Initial State
final class MessageInitial extends MessageState {}

/// Latest Message Loaded State
final class LatestMessageLoadedState extends MessageState {
  ///
  const LatestMessageLoadedState({required this.message});

  ///
  final Message message;

  @override
  List<Object> get props => [message];
}


/// Message Loading State
final class MessageLoadedState extends MessageState {
  ///
  const MessageLoadedState({required this.messages});

  ///
  final List<Message> messages;

  @override
  List<Object> get props => [messages];
}

/// Error State
final class MessageErroState extends MessageState {
  ///
  const MessageErroState({required this.message});

  /// error state
  final String message;
  @override
  List<Object> get props => [message];
}
