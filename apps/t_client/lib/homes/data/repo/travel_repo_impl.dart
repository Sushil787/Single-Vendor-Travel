import 'package:injectable/injectable.dart';
import 'package:t_client/homes/data/model/travel_package_model.dart';

import 'package:t_client/homes/domain/repo/package_data_source.dart';
import 'package:t_client/homes/domain/repo/travel_repo.dart';

/// Travel Repository
@Injectable(as: TravelRepo)
class TravelRepoImpl implements TravelRepo {
  ///
  TravelRepoImpl({required this.travelDataSource});

  final TravelDataSource travelDataSource;
  @override
  Future<void> addLocation({required String location}) {
    throw UnimplementedError();
  }

  @override
  Future<void> addTravelCategory({required String category}) {
    throw UnimplementedError();
  }

 

  @override
  Stream<List<TravelPackageModel>> getTravelPackages() {
    // TODO: implement getTravelPackages
    throw UnimplementedError();
  }

  @override
  Future<void> updatePacakage(
      {required TravelPackageModel travelPackageModel,}) {
    // TODO: implement updatePacakage
    throw UnimplementedError();
  }
}
