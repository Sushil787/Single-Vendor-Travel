import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/core/helper/network_info.dart';
import 'package:t_admin/features/notes/data/model/notes_model.dart';
import 'package:t_admin/features/notes/domain/repository/note_repository.dart';

part 'note_state.dart';

@injectable

///Note Cubit
class NoteCubit extends Cubit<NoteState> {
  /// Constructor
  NoteCubit({
    required this.noteRepository,
    required this.networkInfo,
  }) : super(NoteInitial());

  /// Note Repository
  final NoteRepository noteRepository;

  /// Network Info
  final NetworkInfo networkInfo;

  /// AddNote Method
  Future<void> addNote({
    required NoteModel note,
  }) async {
    try {
      emit(NoteLoadingState());
      await noteRepository.createNote(note: note);
      // emit(NoteSuccessState());
    } on FirebaseException catch (e) {
      emit(NoteLoadFailState(e.code));
    } catch (e) {
      emit(NoteLoadFailState(e.toString()));
    }
  }

  /// UpdateNote Method
  Future<void> updateNote({required NoteModel note}) async {
    try {
      emit(NoteLoadingState());
      await noteRepository.updateNote(note: note);
    } on FirebaseException catch (e) {
      emit(NoteLoadFailState(e.code));
    } catch (e) {
      emit(NoteLoadFailState(e.toString()));
    }
  }

  /// GetNote Method
  Future<void> getNotes() async {
    try {
      // if (await networkInfo.isConnected()) {
      emit(NoteLoadingState());
      debugPrint('from note loading state');
      networkInfo.subs.onData((data) {
        debugPrint('before if condition');
        if (data == ConnectivityResult.ethernet ||
            data == ConnectivityResult.mobile ||
            data == ConnectivityResult.wifi) {
          debugPrint('listening to the note states');
          noteRepository.getNotes().listen((notes) async {
            emit(NoteLoadedState(notes));
            debugPrint('here are the notes');
            log(name: 'mero note', notes.length.toString());
          });
        } else {
          emit(NoInternetState());
        }
      });
      // } else {
      //   emit(NoInternetState());
      // }
    } on FirebaseException catch (e) {
      emit(NoteLoadFailState(e.code));
    } catch (e) {
      emit(NoteLoadFailState(e.toString()));
    }
  }

  /// Delete Note Method
  Future<void> deleteNotes({required String id}) async {
    try {
      emit(NoteLoadingState());
      await noteRepository.deleteNote(id: id);
      // emit(const NoteSuccessState(message: 'note deleted successfully'));
    } on FirebaseException catch (e) {
      emit(NoteLoadFailState(e.code));
    } catch (e) {
      emit(NoteLoadFailState(e.toString()));
    }
  }
}
