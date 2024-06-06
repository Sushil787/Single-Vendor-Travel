// ignore_for_file: void_checks

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/domain/repo/travel_repo.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

/// Search Bloc
@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  ///
  SearchBloc({required this.travelRepo}) : super(const Initial()) {
    on<SearchEvent>((event, emit) async {
      emit(const Loading());
      await emit
          .forEach(
            travelRepo.searchPackage(search: event.search),
            onData: (event) => SearchState.loaded(packages: event),
          )
          .onError(
            (error, stackTrace) => SearchState.error(
              message: error.toString(),
            ),
          );
    });
  }

  /// Travel Repo
  final TravelRepo travelRepo;
 
  // }
}
