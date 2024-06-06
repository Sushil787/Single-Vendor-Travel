part of 'travel_bloc.dart';

@freezed
 class TravelEvent with _$TravelEvent {
  const factory TravelEvent.delete({required String id}) = Delete;
  const factory TravelEvent.addPackage({
    required Uint8List vrImage,
    required List<Uint8List> images, 
    required Uint8List featuredImage,
    required TravelPackageModel travelPackageModel,
  }) = _AddPackage;
  const factory TravelEvent.updatePacakge({
    required TravelPackageModel travelPackageModel,
  }) = _UpdatePackge;
  const factory TravelEvent.get() = Get;


}
