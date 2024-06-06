// ignore_for_file: public_member_api_docs

part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.loaded({required List<TravelPackageModel> packages})
   = Loaded;
  const factory SearchState.error({required String message}) = Error;
  const factory SearchState.loading() = Loading;


}
