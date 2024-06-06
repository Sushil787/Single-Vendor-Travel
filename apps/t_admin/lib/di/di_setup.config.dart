// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:dio/dio.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../core/dio/dio_client.dart' as _i8;
import '../core/helper/network_info.dart' as _i9;
import '../core/utils/firebase_storage_utils.dart' as _i10;
import '../features/chat/data/remote_data_source/chat_remotedata_source_impl.dart'
    as _i16;
import '../features/chat/data/repository/chat_repository_impl.dart' as _i18;
import '../features/chat/domain/repository/chat_remotedata_source.dart' as _i15;
import '../features/chat/domain/repository/chat_repository.dart' as _i17;
import '../features/chat/presentation/cubit/chat/chat_cubit.dart' as _i23;
import '../features/chat/presentation/cubit/latest/latest_message_cubit.dart'
    as _i24;
import '../features/chat/presentation/cubit/message/message_cubit.dart' as _i25;
import '../features/chat/presentation/cubit/user/user_cubit.dart' as _i26;
import '../features/order/data/repo/booking_repo_impl.dart' as _i28;
import '../features/order/domain/repo/booking_repo.dart' as _i27;
import '../features/order/presentation/bloc/booking_bloc.dart' as _i29;
import '../features/package/data/repo/travel_datasource_impl.dart' as _i14;
import '../features/package/data/repo/travel_repo_impl.dart' as _i22;
import '../features/package/domain/repo/package_data_source.dart' as _i13;
import '../features/package/domain/repo/travel_repo.dart' as _i21;
import '../features/package/presentation/bloc/travel_bloc.dart' as _i32;
import '../features/user/data/remote_data_source/user_remote_data_source_impl.dart'
    as _i12;
import '../features/user/data/repository/user_repository_impl.dart' as _i20;
import '../features/user/domain/repository/user_remote_data_source.dart'
    as _i11;
import '../features/user/domain/repository/user_repository.dart' as _i19;
import '../features/user/presentation/cubit/credential/auth_cubit.dart' as _i31;
import '../features/user/presentation/cubit/profile/profile_cubit.dart' as _i30;
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
  final sharedPrefsInjectionModule = _$SharedPrefsInjectionModule();
  final appModule = _$AppModule();
  await gh.factoryAsync<_i3.SharedPreferences>(
    () => sharedPrefsInjectionModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i4.FirebaseFirestore>(() => appModule.store);
  gh.singleton<_i5.FirebaseAuth>(() => appModule.auth);
  gh.singleton<_i6.FirebaseStorage>(() => appModule.firebaseStorage);
  gh.singleton<_i7.Dio>(() => appModule.dio);
  gh.factory<_i8.DioClient>(() => _i8.DioClient(gh<_i7.Dio>()));
  gh.factory<_i9.NetworkInfo>(() => _i9.NetworkInfoImpl());
  gh.factory<_i10.FirebaseStorageUitls>(() =>
      _i10.FirebaseStorageUitls(firebaseStorage: gh<_i6.FirebaseStorage>()));
  gh.factory<_i11.UserRemoteDataSource>(() => _i12.UserRemoteDataSourceImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        firebaseAuth: gh<_i5.FirebaseAuth>(),
      ));
  gh.factory<_i13.TravelDataSource>(
      () => _i14.TravelDataSourceImpl(firestore: gh<_i4.FirebaseFirestore>()));
  gh.factory<_i15.ChatDataSource>(() => _i16.ChatDataSourceImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        firebaseAuth: gh<_i5.FirebaseAuth>(),
        dioClient: gh<_i8.DioClient>(),
      ));
  gh.factory<_i17.ChatRepository>(
      () => _i18.ChatRepositoryImpl(chatDataSource: gh<_i15.ChatDataSource>()));
  gh.factory<_i19.UserRepository>(() => _i20.UserRepositoryImpl(
      userRemoteDataSource: gh<_i11.UserRemoteDataSource>()));
  gh.factory<_i21.TravelRepo>(
      () => _i22.TravelRepoImpl(travelDataSource: gh<_i13.TravelDataSource>()));
  gh.singleton<_i23.ChatCubit>(
      () => _i23.ChatCubit(chatRepository: gh<_i17.ChatRepository>()));
  gh.singleton<_i24.LatestMessageCubit>(
      () => _i24.LatestMessageCubit(chatRepository: gh<_i17.ChatRepository>()));
  gh.singleton<_i25.MessageCubit>(
      () => _i25.MessageCubit(chatRepository: gh<_i17.ChatRepository>()));
  gh.factory<_i26.UserCubit>(
      () => _i26.UserCubit(chatRepository: gh<_i17.ChatRepository>()));
  gh.factory<_i27.BookingRepo>(() => _i28.BookingRepoImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        userRepository: gh<_i19.UserRepository>(),
        dioClient: gh<_i8.DioClient>(),
      ));
  gh.factory<_i29.BookingBloc>(
      () => _i29.BookingBloc(bookingRepo: gh<_i27.BookingRepo>()));
  gh.factory<_i30.ProfileCubit>(() => _i30.ProfileCubit(
        userRepository: gh<_i19.UserRepository>(),
        networkInfo: gh<_i9.NetworkInfo>(),
      ));
  gh.singleton<_i31.AuthCubit>(() => _i31.AuthCubit(
        userRepository: gh<_i19.UserRepository>(),
        networkInfo: gh<_i9.NetworkInfo>(),
      ));
  gh.factory<_i32.TravelBloc>(
      () => _i32.TravelBloc(travelRepo: gh<_i21.TravelRepo>()));
  return getIt;
}

class _$SharedPrefsInjectionModule extends _i33.SharedPrefsInjectionModule {}

class _$AppModule extends _i33.AppModule {}
