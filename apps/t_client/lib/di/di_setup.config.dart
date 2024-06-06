// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../core/helper/network_info.dart' as _i8;
import '../features/bookmark/data/bookmark_data_source_impl.dart' as _i16;
import '../features/bookmark/data/bookmark_repo_impl.dart' as _i18;
import '../features/bookmark/domain/bookmark_data_source.dart' as _i15;
import '../features/bookmark/domain/bookmark_repo.dart' as _i17;
import '../features/bookmark/presentation/bloc/bloc/bookmark_bloc.dart' as _i28;
import '../features/chat/data/remote/chat_data_repo_impl.dart' as _i20;
import '../features/chat/domain/chat_data_repo.dart' as _i19;
import '../features/chat/presentation/cubit/chat_cubit.dart' as _i29;
import '../features/orders/data/repo/order_repo_impl.dart' as _i21;
import '../features/orders/presentation/bloc/order_bloc.dart' as _i30;
import '../features/package/data/repo/travel_datasource_impl.dart' as _i24;
import '../features/package/data/repo/travel_repo_impl.dart' as _i26;
import '../features/package/domain/repo/travel_data_source.dart' as _i23;
import '../features/package/domain/repo/travel_repo.dart' as _i25;
import '../features/package/presentation/bloc/recommend/recommend_bloc.dart'
    as _i31;
import '../features/package/presentation/bloc/search_bloc/bloc/search_bloc.dart'
    as _i32;
import '../features/package/presentation/bloc/travel_bloc/travel_bloc.dart'
    as _i33;
import '../features/user/data/remote_data_source/user_remote_data_source_impl.dart'
    as _i11;
import '../features/user/data/repository/user_repository_impl.dart' as _i13;
import '../features/user/domain/repository/user_remote_data_source.dart'
    as _i10;
import '../features/user/domain/repository/user_repository.dart' as _i12;
import '../features/user/presentation/cubit/credential/cubit/auth_cubit.dart'
    as _i14;
import '../features/user/presentation/cubit/profile/cubit/profile_cubit.dart'
    as _i22;
import '../features/user/presentation/cubit/profile/cubit/update_profile_cubit.dart'
    as _i27;
import 'app_module.dart' as _i34;

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
  gh.singleton<_i3.Dio>(() => appModule.dio);
  gh.singleton<_i4.FirebaseAuth>(() => appModule.auth);
  gh.singleton<_i5.FirebaseFirestore>(() => appModule.store);
  gh.singleton<_i6.FirebaseStorage>(() => appModule.firebaseStorage);
  gh.singleton<_i7.GoogleSignIn>(() => appModule.googleSignin);
  gh.factory<_i8.NetworkInfo>(() => _i8.NetworkInfoImpl());
  await gh.factoryAsync<_i9.SharedPreferences>(
    () => sharedPrefsInjectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i10.UserRemoteDataSource>(() => _i11.UserRemoteDataSourceImpl(
        firebaseFirestore: gh<_i5.FirebaseFirestore>(),
        firebaseAuth: gh<_i4.FirebaseAuth>(),
        googleSignIn: gh<_i7.GoogleSignIn>(),
        firebaseStorage: gh<_i6.FirebaseStorage>(),
      ));
  gh.factory<_i12.UserRepository>(() => _i13.UserRepositoryImpl(
      userRemoteDataSource: gh<_i10.UserRemoteDataSource>()));
  gh.singleton<_i14.AuthCubit>(() => _i14.AuthCubit(
        userRepository: gh<_i12.UserRepository>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.factory<_i15.BookmarkDataSource>(() => _i16.BookmarkDataSourceImpl(
        gh<_i12.UserRepository>(),
        firebaseFirestore: gh<_i5.FirebaseFirestore>(),
      ));
  gh.factory<_i17.BookmarkRepo>(() =>
      _i18.BookmarkRepoImpl(bookmarkDataSource: gh<_i15.BookmarkDataSource>()));
  gh.factory<_i19.ChatDataRepository>(() => _i20.ChatDataRepositoryImpl(
        firebaseFirestore: gh<_i5.FirebaseFirestore>(),
        firebaseAuth: gh<_i4.FirebaseAuth>(),
      ));
  gh.factory<_i21.OrderRepo>(() => _i21.OrderRepo(
        firestore: gh<_i5.FirebaseFirestore>(),
        userRepository: gh<_i12.UserRepository>(),
      ));
  gh.factory<_i22.ProfileCubit>(() => _i22.ProfileCubit(
        userRepository: gh<_i12.UserRepository>(),
        networkInfo: gh<_i8.NetworkInfo>(),
      ));
  gh.factory<_i23.TravelDataSource>(() => _i24.TravelDataSourceImpl(
        gh<_i12.UserRepository>(),
        firestore: gh<_i5.FirebaseFirestore>(),
        dio: gh<_i3.Dio>(),
      ));
  gh.factory<_i25.TravelRepo>(
      () => _i26.TravelRepoImpl(travelDataSource: gh<_i23.TravelDataSource>()));
  gh.factory<_i27.UpdateProfileCubit>(
      () => _i27.UpdateProfileCubit(userRepository: gh<_i12.UserRepository>()));
  gh.factory<_i28.BookmarkBloc>(
      () => _i28.BookmarkBloc(gh<_i17.BookmarkRepo>()));
  gh.factory<_i29.ChatCubit>(
      () => _i29.ChatCubit(chatDataRepository: gh<_i19.ChatDataRepository>()));
  gh.factory<_i30.OrderBloc>(
      () => _i30.OrderBloc(orderRepo: gh<_i21.OrderRepo>()));
  gh.factory<_i31.RecommendBloc>(
      () => _i31.RecommendBloc(travelRepo: gh<_i25.TravelRepo>()));
  gh.factory<_i32.SearchBloc>(
      () => _i32.SearchBloc(travelRepo: gh<_i25.TravelRepo>()));
  gh.factory<_i33.TravelBloc>(
      () => _i33.TravelBloc(travelRepo: gh<_i25.TravelRepo>()));
  return getIt;
}

class _$AppModule extends _i34.AppModule {}

class _$SharedPrefsInjectionModule extends _i34.SharedPrefsInjectionModule {}
