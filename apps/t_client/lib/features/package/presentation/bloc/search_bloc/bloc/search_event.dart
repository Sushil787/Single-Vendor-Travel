part of 'search_bloc.dart';

/// Search Event
@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search({required String search}) = Search;
}