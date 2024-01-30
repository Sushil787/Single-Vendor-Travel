// ignore_for_file: public_member_api_docs

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:t_client/homes/data/model/travel_package_model.dart';
import 'package:t_client/homes/domain/repo/package_data_source.dart';


/// Travel Data Source Repo
@Injectable(as: TravelDataSource)
class TravelDataSourceImpl implements TravelDataSource {
  TravelDataSourceImpl({
    required this.firestore,
  });
  final FirebaseFirestore firestore;

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

  @override
  Future<void> deletePackage({required String id}) {
    // TODO: implement deletePackage
    throw UnimplementedError();
  }
}
