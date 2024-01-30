// ignore_for_file: public_member_api_docs

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/homes/data/model/travel_package_model.dart';


import 'package:t_client/homes/domain/repo/travel_repo.dart';
part 'travel_event.dart';
part 'travel_state.dart';
part 'travel_bloc.freezed.dart';

@injectable
class TravelBloc extends Bloc<TravelEvent, TravelPackageState> {
  TravelBloc({required this.travelRepo})
      : super(const TravelPackageState.initial()) {
    on<TravelEvent>((event, emit) async {
      await event.when(
        get: () => _get(emit),
      );
    });
  }

  /// Travel Repository
  final TravelRepo travelRepo;

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
      // travelRepo
    } catch (e) {
      emit(TravelPackageState.error(message: e.toString()));
    }
  }
}
