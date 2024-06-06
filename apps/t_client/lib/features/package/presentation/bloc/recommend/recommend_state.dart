// ignore_for_file: public_member_api_docs

part of 'recommend_bloc.dart';

@freezed
class RecommendState with _$RecommendState {
  const factory RecommendState.initial() = Initial;
  const factory RecommendState.recommendLoading() = RecommendLoading;
  const factory RecommendState.loaded({
    required List<TravelPackageModel> packages,
  }) = RecommendLoaded;
  const factory RecommendState.error({
    required String message,
  }) = Error;
}
