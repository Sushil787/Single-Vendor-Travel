// ignore_for_file: public_member_api_docs

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';
import 'package:t_admin/features/package/domain/repo/travel_repo.dart';
part 'travel_event.dart';
part 'travel_state.dart';
part 'travel_bloc.freezed.dart';

@injectable
class TravelBloc extends Bloc<TravelEvent, TravelPackageState> {
  TravelBloc({required this.travelRepo})
      : super(const TravelPackageState.initial()) {
    on<TravelEvent>((event, emit) async {
      totalPackages = 0;
      await event.when(
        delete: (String id) => _delete(emit, id),
        addPackage: (
          Uint8List vrImage,
          List<Uint8List> images,
          Uint8List featuredImage,
          TravelPackageModel package,
        ) =>
            _addPackage(
          emit,
          package,
          images,
          vrImage,
          featuredImage,
        ),
        updatePacakge: (TravelPackageModel package) =>
            _updatePackage(emit, package),
        get: () => _get(emit),
      );
    });
  }

  /// Travel Repository
  final TravelRepo travelRepo;

  late int totalPackages;

  Future<void> _delete(
    Emitter<TravelPackageState> emit,
    String id,
  ) async {
    try {
      emit(const Loading());
      // travelRepo
    } catch (e) {
      emit(TravelPackageState.error(message: e.toString()));
    }
  }

  /// Add Packages
  Future<void> _addPackage(
    Emitter<TravelPackageState> emit,
    TravelPackageModel package,
    List<Uint8List> images,
    Uint8List featuredImage,
    Uint8List vrImage,
  ) async {
    try {
      emit(const Loading());
      await travelRepo.addTravelPacakge(
        featuredImage: featuredImage,
        images: images,
        vrImage: vrImage,
        travelPackageModel: package,
      );
      emit(const Success());
    } catch (e) {
      emit(TravelPackageState.error(message: e.toString()));
    }
  }

  /// Update Packages
  Future<void> _updatePackage(
    Emitter<TravelPackageState> emit,
    TravelPackageModel pacakge,
  ) async {
    try {
      emit(const Loading());

      // travelRepo
    } catch (e) {
      emit(TravelPackageState.error(message: e.toString()));
    }
  }

  /// Get all Packages
  Future<void> _get(Emitter<TravelPackageState> emit) async {
    try {
      emit(const Loading());
      await emit.onEach(
        travelRepo.getTravelPackages(),
        onData: (data) {
          emit(TravelPackageLoaded(packages: data));
          totalPackages = data.length;
        },
      );
    } catch (e) {
      emit(TravelPackageState.error(message: e.toString()));
    }
  }
}
