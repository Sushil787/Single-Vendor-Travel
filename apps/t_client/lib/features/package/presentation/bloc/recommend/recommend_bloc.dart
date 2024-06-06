import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/domain/repo/travel_repo.dart';

part 'recommend_event.dart';
part 'recommend_state.dart';
part 'recommend_bloc.freezed.dart';

///
@injectable
class RecommendBloc extends Bloc<RecommendEvent, RecommendState> {
  ///
  RecommendBloc({required this.travelRepo}) : super(const Initial()) {
    on<RecommendEvent>((event, emit) async {
      await event.when(
        recommend: () => _getRecommended(emit),
      );
    });
  }

  /// Travel Repository
  final TravelRepo travelRepo;

  /// Get Recommended
  Future<void> _getRecommended(Emitter<RecommendState> emit) async {
    try {
      final data = await travelRepo.getRecommended();
      emit(RecommendState.loaded(packages: data ?? []));
    } catch (e) {
      emit(RecommendState.error(message: e.toString()));
    }
  }
}
