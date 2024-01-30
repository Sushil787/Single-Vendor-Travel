part of 'travel_bloc.dart';

@freezed
class TravelPackageState with _$TravelPackageState {
  const factory TravelPackageState.initial() = Initial;
  const factory TravelPackageState.loading() = Loading;
  const factory TravelPackageState.success() = Success;
  const factory TravelPackageState.updated() = TravelPackageUpdated;
  const factory TravelPackageState.deleted() = TravelPackageDeleted;
  const factory TravelPackageState.loaded() = TravelPackageLoaded;
  const factory TravelPackageState.error({required String message}) 
  = TravelPackageError;
}
