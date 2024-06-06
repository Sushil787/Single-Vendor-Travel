// ignore_for_file: public_member_api_docs

part of 'recommend_bloc.dart';

/// Recommend event
@freezed
class RecommendEvent with _$RecommendEvent {
  const factory RecommendEvent.recommend() = Recommend;
}
