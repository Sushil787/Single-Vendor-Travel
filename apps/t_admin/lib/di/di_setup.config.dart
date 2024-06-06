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

import '../core/dio/dio_client.dart' as _i10;
import '../core/helper/network_info.dart' as _i11;
import '../core/utils/firebase_storage_utils.dart' as _i13;
import '../features/chat/data/remote_data_source/chat_remotedata_source_impl.dart'
    as _i19;
import '../features/chat/data/repository/chat_repository_impl.dart' as _i21;
import '../features/chat/domain/repository/chat_remotedata_source.dart' as _i18;
import '../features/chat/domain/repository/chat_repository.dart' as _i20;
import '../features/chat/presentation/cubit/chat/chat_cubit.dart' as _i26;
import '../features/chat/presentation/cubit/latest/latest_message_cubit.dart'
    as _i27;
import '../features/chat/presentation/cubit/message/message_cubit.dart' as _i28;
import '../features/chat/presentation/cubit/user/user_cubit.dart' as _i29;
import '../features/order/data/repo/booking_repo_impl.dart' as _i31;
import '../features/order/domain/repo/booking_repo.dart' as _i30;
import '../features/order/presentation/bloc/booking_bloc.dart' as _i32;
import '../features/package/data/repo/travel_datasource_impl.dart' as _i17;
import '../features/package/data/repo/travel_repo_impl.dart' as _i25;
import '../features/package/domain/repo/package_data_source.dart' as _i16;
import '../features/package/domain/repo/travel_repo.dart' as _i24;
import '../features/package/presentation/bloc/travel_bloc.dart' as _i35;
import '../features/product/presentation/cubit/product_cubit.dart' as _i12;
import '../features/product/repo/product_repo.dart' as _i8;
import '../features/user/data/remote_data_source/user_remote_data_source_impl.dart'
    as _i15;
import '../features/user/data/repository/user_repository_impl.dart' as _i23;
import '../features/user/domain/repository/user_remote_data_source.dart'
    as _i14;
import '../features/user/domain/repository/user_repository.dart' as _i22;
import '../features/user/presentation/cubit/credential/auth_cubit.dart' as _i34;
import '../features/user/presentation/cubit/profile/profile_cubit.dart' as _i33;
import '../features/vendor/repo/vendor_repo.dart' as _i9;
import 'app_module.dart' as _i36;

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
  gh.factory<_i8.ProductRepo>(
      () => _i8.ProductRepo(firebaseFirestore: gh<_i4.FirebaseFirestore>()));
  gh.factory<_i9.VendorRepo>(
      () => _i9.VendorRepo(firebaseFirestore: gh<_i4.FirebaseFirestore>()));
  gh.factory<_i10.DioClient>(() => _i10.DioClient(gh<_i7.Dio>()));
  gh.factory<_i11.NetworkInfo>(() => _i11.NetworkInfoImpl());
  gh.factory<_i12.ProductCubit>(
      () => _i12.ProductCubit(productRepo: gh<_i8.ProductRepo>()));
  gh.factory<_i13.FirebaseStorageUitls>(() =>
      _i13.FirebaseStorageUitls(firebaseStorage: gh<_i6.FirebaseStorage>()));
  gh.factory<_i14.UserRemoteDataSource>(() => _i15.UserRemoteDataSourceImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        firebaseAuth: gh<_i5.FirebaseAuth>(),
      ));
  gh.factory<_i16.TravelDataSource>(
      () => _i17.TravelDataSourceImpl(firestore: gh<_i4.FirebaseFirestore>()));
  gh.factory<_i18.ChatDataSource>(() => _i19.ChatDataSourceImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        firebaseAuth: gh<_i5.FirebaseAuth>(),
        dioClient: gh<_i10.DioClient>(),
      ));
  gh.factory<_i20.ChatRepository>(
      () => _i21.ChatRepositoryImpl(chatDataSource: gh<_i18.ChatDataSource>()));
  gh.factory<_i22.UserRepository>(() => _i23.UserRepositoryImpl(
      userRemoteDataSource: gh<_i14.UserRemoteDataSource>()));
  gh.factory<_i24.TravelRepo>(
      () => _i25.TravelRepoImpl(travelDataSource: gh<_i16.TravelDataSource>()));
  gh.singleton<_i26.ChatCubit>(
      () => _i26.ChatCubit(chatRepository: gh<_i20.ChatRepository>()));
  gh.singleton<_i27.LatestMessageCubit>(
      () => _i27.LatestMessageCubit(chatRepository: gh<_i20.ChatRepository>()));
  gh.singleton<_i28.MessageCubit>(
      () => _i28.MessageCubit(chatRepository: gh<_i20.ChatRepository>()));
  gh.factory<_i29.UserCubit>(
      () => _i29.UserCubit(chatRepository: gh<_i20.ChatRepository>()));
  gh.factory<_i30.BookingRepo>(() => _i31.BookingRepoImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        userRepository: gh<_i22.UserRepository>(),
        dioClient: gh<_i10.DioClient>(),
      ));
  gh.factory<_i32.BookingBloc>(
      () => _i32.BookingBloc(bookingRepo: gh<_i30.BookingRepo>()));
  gh.factory<_i33.ProfileCubit>(() => _i33.ProfileCubit(
        userRepository: gh<_i22.UserRepository>(),
        networkInfo: gh<_i11.NetworkInfo>(),
      ));
  gh.singleton<_i34.AuthCubit>(() => _i34.AuthCubit(
        userRepository: gh<_i22.UserRepository>(),
        networkInfo: gh<_i11.NetworkInfo>(),
      ));
  gh.factory<_i35.TravelBloc>(
      () => _i35.TravelBloc(travelRepo: gh<_i24.TravelRepo>()));
  return getIt;
}

class _$SharedPrefsInjectionModule extends _i36.SharedPrefsInjectionModule {}

class _$AppModule extends _i36.AppModule {}
