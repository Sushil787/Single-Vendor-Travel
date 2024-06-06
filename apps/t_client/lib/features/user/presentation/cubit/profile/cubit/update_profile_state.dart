// ignore_for_file: public_member_api_docs

part of 'update_profile_cubit.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = UpdateInitial;
  const factory UpdateProfileState.success() = UpdateSuccess;
  const factory UpdateProfileState.loading() = UpdateLoading;
  const factory UpdateProfileState.error({required String message}) = UpdateError;



}
