// ignore_for_file: public_member_api_docs

part of 'travel_bloc.dart';

@freezed
class TravelPackageState with _$TravelPackageState {
  const factory TravelPackageState.initial() = Initial;
  const factory TravelPackageState.loading() = Loading;
  const factory TravelPackageState.loaded({
    required List<TravelPackageModel> packages,
  }) = TravelPackageLoaded;
  const factory TravelPackageState.error({required String message}) =
      TravelPackageError;
}
