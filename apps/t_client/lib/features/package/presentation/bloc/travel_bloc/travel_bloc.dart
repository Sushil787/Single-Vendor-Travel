// ignore_for_file: public_member_api_docs

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/domain/repo/travel_repo.dart';
part 'travel_event.dart';
part 'travel_state.dart';
part 'travel_bloc.freezed.dart';

@injectable
class TravelBloc extends Bloc<TravelEvent, TravelPackageState> {
  TravelBloc({required this.travelRepo})
      : super(const TravelPackageState.initial()) {
    on<TravelEvent>((event, emit) async {
      await event.when(
        get: () => _get(emit)
        
        ,
      );
    });
  }
  List<TravelPackageModel> package = [];
  /// Travel Repository
  final TravelRepo travelRepo;
  /// Get all Packages
  Future<void> _get(Emitter<TravelPackageState> emit) async {
    try {
      emit(const Loading());
      await emit.onEach(
        travelRepo.getTravelPackages(),
        onData: (data) {
          package = data;
          emit(TravelPackageLoaded(packages: data));
        },
      );
    } catch (e) {
      emit(TravelPackageState.error(message: e.toString()));
    }
  }
}
