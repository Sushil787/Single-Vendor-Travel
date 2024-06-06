// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../core/dio/dio_client.dart' as _i4;
import '../core/helper/network_info.dart' as _i9;
import '../core/utils/firebase_storage_utils.dart' as _i8;
import '../features/chat/data/remote_data_source/chat_remotedata_source_impl.dart'
    as _i23;
import '../features/chat/data/repository/chat_repository_impl.dart' as _i25;
import '../features/chat/domain/repository/chat_remotedata_source.dart' as _i22;
import '../features/chat/domain/repository/chat_repository.dart' as _i24;
import '../features/chat/presentation/cubit/chat/chat_cubit.dart' as _i32;
import '../features/chat/presentation/cubit/latest/latest_message_cubit.dart'
    as _i26;
import '../features/chat/presentation/cubit/message/message_cubit.dart' as _i27;
import '../features/chat/presentation/cubit/user/user_cubit.dart' as _i30;
import '../features/order/data/repo/booking_repo_impl.dart' as _i21;
import '../features/order/domain/repo/booking_repo.dart' as _i20;
import '../features/order/presentation/bloc/booking_bloc.dart' as _i31;
import '../features/package/data/repo/travel_datasource_impl.dart' as _i12;
import '../features/package/data/repo/travel_repo_impl.dart' as _i14;
import '../features/package/domain/repo/package_data_source.dart' as _i11;
import '../features/package/domain/repo/travel_repo.dart' as _i13;
import '../features/package/presentation/bloc/travel_bloc.dart' as _i29;
import '../features/user/data/remote_data_source/user_remote_data_source_impl.dart'
    as _i16;
import '../features/user/data/repository/user_repository_impl.dart' as _i18;
import '../features/user/domain/repository/user_remote_data_source.dart'
    as _i15;
import '../features/user/domain/repository/user_repository.dart' as _i17;
import '../features/user/presentation/cubit/credential/auth_cubit.dart' as _i19;
import '../features/user/presentation/cubit/profile/profile_cubit.dart' as _i28;
import 'app_module.dart' as _i33;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  final sharedPrefsInjectionModule = _$SharedPrefsInjectionModule();
  gh.singleton<_i3.Dio>(appModule.dio);
  gh.factory<_i4.DioClient>(() => _i4.DioClient(gh<_i3.Dio>()));
  gh.singleton<_i5.FirebaseAuth>(appModule.auth);
  gh.singleton<_i6.FirebaseFirestore>(appModule.store);
  gh.singleton<_i7.FirebaseStorage>(appModule.firebaseStorage);
  gh.factory<_i8.FirebaseStorageUitls>(() =>
      _i8.FirebaseStorageUitls(firebaseStorage: gh<_i7.FirebaseStorage>()));
  gh.factory<_i9.NetworkInfo>(() => _i9.NetworkInfoImpl());
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => sharedPrefsInjectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i11.TravelDataSource>(
      () => _i12.TravelDataSourceImpl(firestore: gh<_i6.FirebaseFirestore>()));
  gh.factory<_i13.TravelRepo>(
      () => _i14.TravelRepoImpl(travelDataSource: gh<_i11.TravelDataSource>()));
  gh.factory<_i15.UserRemoteDataSource>(() => _i16.UserRemoteDataSourceImpl(
        firebaseFirestore: gh<_i6.FirebaseFirestore>(),
        firebaseAuth: gh<_i5.FirebaseAuth>(),
      ));
  gh.factory<_i17.UserRepository>(() => _i18.UserRepositoryImpl(
      userRemoteDataSource: gh<_i15.UserRemoteDataSource>()));
  gh.singleton<_i19.AuthCubit>(_i19.AuthCubit(
    userRepository: gh<_i17.UserRepository>(),
    networkInfo: gh<_i9.NetworkInfo>(),
  ));
  gh.factory<_i20.BookingRepo>(() => _i21.BookingRepoImpl(
        firebaseFirestore: gh<_i6.FirebaseFirestore>(),
        userRepository: gh<_i17.UserRepository>(),
        dioClient: gh<_i4.DioClient>(),
      ));
  gh.factory<_i22.ChatDataSource>(() => _i23.ChatDataSourceImpl(
        firebaseFirestore: gh<_i6.FirebaseFirestore>(),
        firebaseAuth: gh<_i5.FirebaseAuth>(),
        dioClient: gh<_i4.DioClient>(),
      ));
  gh.factory<_i24.ChatRepository>(
      () => _i25.ChatRepositoryImpl(chatDataSource: gh<_i22.ChatDataSource>()));
  gh.singleton<_i26.LatestMessageCubit>(
      _i26.LatestMessageCubit(chatRepository: gh<_i24.ChatRepository>()));
  gh.singleton<_i27.MessageCubit>(
      _i27.MessageCubit(chatRepository: gh<_i24.ChatRepository>()));
  gh.factory<_i28.ProfileCubit>(() => _i28.ProfileCubit(
        userRepository: gh<_i17.UserRepository>(),
        networkInfo: gh<_i9.NetworkInfo>(),
      ));
  gh.factory<_i29.TravelBloc>(
      () => _i29.TravelBloc(travelRepo: gh<_i13.TravelRepo>()));
  gh.factory<_i30.UserCubit>(
      () => _i30.UserCubit(chatRepository: gh<_i24.ChatRepository>()));
  gh.factory<_i31.BookingBloc>(
      () => _i31.BookingBloc(bookingRepo: gh<_i20.BookingRepo>()));
  gh.singleton<_i32.ChatCubit>(
      _i32.ChatCubit(chatRepository: gh<_i24.ChatRepository>()));
  return getIt;
}

class _$AppModule extends _i33.AppModule {}

class _$SharedPrefsInjectionModule extends _i33.SharedPrefsInjectionModule {}
