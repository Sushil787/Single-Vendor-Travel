import 'package:t_admin/features/notes/data/model/notes_model.dart';

/// Note Repository
abstract class NoteRepository {
  /// Get Notes
  Stream<List<NoteModel>> getNotes();

  /// Create Note
  Future<void> createNote({required NoteModel note});

  /// Delete Note

  Future<void> deleteNote({required String id});

  /// Update Note
  Future<void> updateNote({required NoteModel note});
}
