part of 'latest_message_cubit.dart';

///
sealed class LatestMessageState extends Equatable {
  ///
  const LatestMessageState();

  @override
  List<Object> get props => [];
}

///
final class LatestMessageInitial extends LatestMessageState {}

///
final class LatestMessageLoading extends LatestMessageState {}

///
final class LatestMessageErrorState extends LatestMessageState {
  ///
  const LatestMessageErrorState({required this.message});

  ///
  final String message;
  @override
  List<Object> get props => [message];
}

///
final class LatestMessageLoaded extends LatestMessageState {
  ///
  const LatestMessageLoaded({required this.message});

  ///
  final Message message;
  @override
  List<Object> get props => [];
}

///
final class NoMessagesState extends LatestMessageState {}
