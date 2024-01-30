part of 'note_cubit.dart';

/// Note State
abstract class NoteState extends Equatable {
  ///
  const NoteState();
}

/// Note Initial State
class NoteInitial extends NoteState {
  @override
  List<Object?> get props => [];
}

/// Note Loading State
class NoteLoadingState extends NoteState {
  @override
  List<Object?> get props => [];
}

/// Note Delete State
class NoteDeletedState extends NoteState {
  @override
  List<Object?> get props => [];
}

///No internet state
class NoInternetState extends NoteState {
  @override
  List<Object?> get props => [];
}

/// Note Success State
class NoteSuccessState extends NoteState {
  ///
  const NoteSuccessState({required this.message});
/// success Message
  final String message;
  @override
  List<Object?> get props => [message];
}



/// Note Loading State
class NoteLoadedState extends NoteState {
  ///
  const NoteLoadedState(this.notes);

  /// ListNotes
  final List<NoteModel> notes;
  @override
  List<Object?> get props => [notes];
}

/// Note Loading State
class NoteLoadFailState extends NoteState {
  ///s
  const NoteLoadFailState(this.message);

  /// Error Message
  final String message;
  @override
  List<Object?> get props => [message];
}
