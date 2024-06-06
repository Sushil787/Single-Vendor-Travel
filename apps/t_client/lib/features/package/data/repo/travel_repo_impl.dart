import 'package:injectable/injectable.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/domain/repo/travel_data_source.dart';
import 'package:t_client/features/package/domain/repo/travel_repo.dart';

/// Travel Repository
@Injectable(as: TravelRepo)
class TravelRepoImpl implements TravelRepo {
  ///
  TravelRepoImpl({required this.travelDataSource});

  /// Travel Package Data Source
  final TravelDataSource travelDataSource;

  @override
  Future<void> addTravelCategory({required String category}) {
    throw UnimplementedError();
  }

  @override
  Stream<List<TravelPackageModel>> getTravelPackages() {
    try {
      final packages = travelDataSource.getTravelPackages();
      return packages;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Stream<List<TravelPackageModel>> searchPackage({required String search}) {
    try {
      return travelDataSource.searchPackage(search: search);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<TravelPackageModel>> getRecommended() {
    try {
      return travelDataSource.getRecommended();
    } catch (e) {
      rethrow;
    }
  }
}
