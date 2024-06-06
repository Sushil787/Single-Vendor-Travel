// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../core/helper/network_info.dart' as _i9;
import '../features/bookmark/data/bookmark_data_source_impl.dart' as _i19;
import '../features/bookmark/data/bookmark_repo_impl.dart' as _i21;
import '../features/bookmark/domain/bookmark_data_source.dart' as _i18;
import '../features/bookmark/domain/bookmark_repo.dart' as _i20;
import '../features/bookmark/presentation/bloc/bloc/bookmark_bloc.dart' as _i36;
import '../features/chat/data/remote/chat_data_repo_impl.dart' as _i23;
import '../features/chat/domain/chat_data_repo.dart' as _i22;
import '../features/chat/presentation/cubit/chat_cubit.dart' as _i37;
import '../features/news/service/api_client.dart' as _i3;
import '../features/orders/data/repo/order_repo_impl.dart' as _i28;
import '../features/orders/presentation/bloc/order_bloc.dart' as _i39;
import '../features/package/data/repo/comment_repo_impl.dart' as _i27;
import '../features/package/data/repo/remote/comment_datasource_impl.dart'
    as _i25;
import '../features/package/data/repo/remote/travel_datasource_impl.dart'
    as _i32;
import '../features/package/data/repo/travel_repo_impl.dart' as _i34;
import '../features/package/domain/repo/comment_data_source.dart' as _i24;
import '../features/package/domain/repo/comment_repo.dart' as _i26;
import '../features/package/domain/repo/travel_data_source.dart' as _i31;
import '../features/package/domain/repo/travel_repo.dart' as _i33;
import '../features/package/presentation/bloc/comment/comment_cubit.dart'
    as _i38;
import '../features/package/presentation/bloc/cubit/weather_cubit.dart' as _i16;
import '../features/package/presentation/bloc/search_bloc/bloc/search_bloc.dart'
    as _i40;
import '../features/package/presentation/bloc/travel_bloc/travel_bloc.dart'
    as _i41;
import '../features/product/presentation/cubit/product_cubit.dart' as _i29;
import '../features/product/repo/product_repo.dart' as _i10;
import '../features/user/data/remote_data_source/user_remote_data_source_impl.dart'
    as _i13;
import '../features/user/data/repository/user_repository_impl.dart' as _i15;
import '../features/user/domain/repository/user_remote_data_source.dart'
    as _i12;
import '../features/user/domain/repository/user_repository.dart' as _i14;
import '../features/user/presentation/cubit/credential/cubit/auth_cubit.dart'
    as _i17;
import '../features/user/presentation/cubit/profile/cubit/profile_cubit.dart'
    as _i30;
import '../features/user/presentation/cubit/profile/cubit/update_profile_cubit.dart'
    as _i35;
import 'app_module.dart' as _i42;

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
  gh.singleton<_i3.ApiClient>(() => appModule.apiClient);
  gh.singleton<_i4.Dio>(() => appModule.dio);
  gh.singleton<_i5.FirebaseAuth>(() => appModule.auth);
  gh.singleton<_i6.FirebaseFirestore>(() => appModule.store);
  gh.singleton<_i7.FirebaseStorage>(() => appModule.firebaseStorage);
  gh.singleton<_i8.GoogleSignIn>(() => appModule.googleSignin);
  gh.factory<_i9.NetworkInfo>(() => _i9.NetworkInfoImpl());
  gh.factory<_i10.ProductRepo>(
      () => _i10.ProductRepo(firebaseFirestore: gh<_i6.FirebaseFirestore>()));
  await gh.factoryAsync<_i11.SharedPreferences>(
    () => sharedPrefsInjectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i12.UserRemoteDataSource>(() => _i13.UserRemoteDataSourceImpl(
        firebaseFirestore: gh<_i6.FirebaseFirestore>(),
        firebaseAuth: gh<_i5.FirebaseAuth>(),
        googleSignIn: gh<_i8.GoogleSignIn>(),
        firebaseStorage: gh<_i7.FirebaseStorage>(),
      ));
  gh.factory<_i14.UserRepository>(() => _i15.UserRepositoryImpl(
      userRemoteDataSource: gh<_i12.UserRemoteDataSource>()));
  gh.factory<_i16.WeatherCubit>(() => _i16.WeatherCubit(dio: gh<_i4.Dio>()));
  gh.singleton<_i17.AuthCubit>(() => _i17.AuthCubit(
        userRepository: gh<_i14.UserRepository>(),
        networkInfo: gh<_i9.NetworkInfo>(),
      ));
  gh.factory<_i18.BookmarkDataSource>(() => _i19.BookmarkDataSourceImpl(
        gh<_i14.UserRepository>(),
        firebaseFirestore: gh<_i6.FirebaseFirestore>(),
      ));
  gh.factory<_i20.BookmarkRepo>(() =>
      _i21.BookmarkRepoImpl(bookmarkDataSource: gh<_i18.BookmarkDataSource>()));
  gh.factory<_i22.ChatDataRepository>(() => _i23.ChatDataRepositoryImpl(
        firebaseFirestore: gh<_i6.FirebaseFirestore>(),
        firebaseAuth: gh<_i5.FirebaseAuth>(),
      ));
  gh.factory<_i24.CommentDataSource>(() => _i25.CommentDataSourceImpl(
        firebaseAuth: gh<_i5.FirebaseAuth>(),
        firebaseFirestore: gh<_i6.FirebaseFirestore>(),
      ));
  gh.factory<_i26.CommentRepo>(() =>
      _i27.CommentRepoImpl(commendDataSource: gh<_i24.CommentDataSource>()));
  gh.factory<_i28.OrderRepo>(() => _i28.OrderRepo(
        firestore: gh<_i6.FirebaseFirestore>(),
        userRepository: gh<_i14.UserRepository>(),
      ));
  gh.factory<_i29.ProductCubit>(
      () => _i29.ProductCubit(productRepo: gh<_i10.ProductRepo>()));
  gh.factory<_i30.ProfileCubit>(() => _i30.ProfileCubit(
        userRepository: gh<_i14.UserRepository>(),
        networkInfo: gh<_i9.NetworkInfo>(),
      ));
  gh.factory<_i31.TravelDataSource>(() => _i32.TravelDataSourceImpl(
        gh<_i14.UserRepository>(),
        firestore: gh<_i6.FirebaseFirestore>(),
        dio: gh<_i4.Dio>(),
      ));
  gh.factory<_i33.TravelRepo>(
      () => _i34.TravelRepoImpl(travelDataSource: gh<_i31.TravelDataSource>()));
  gh.factory<_i35.UpdateProfileCubit>(
      () => _i35.UpdateProfileCubit(userRepository: gh<_i14.UserRepository>()));
  gh.factory<_i36.BookmarkBloc>(
      () => _i36.BookmarkBloc(gh<_i20.BookmarkRepo>()));
  gh.factory<_i37.ChatCubit>(
      () => _i37.ChatCubit(chatDataRepository: gh<_i22.ChatDataRepository>()));
  gh.factory<_i38.CommentCubit>(
      () => _i38.CommentCubit(commentRepo: gh<_i26.CommentRepo>()));
  gh.factory<_i39.OrderBloc>(
      () => _i39.OrderBloc(orderRepo: gh<_i28.OrderRepo>()));
  gh.factory<_i40.SearchBloc>(
      () => _i40.SearchBloc(travelRepo: gh<_i33.TravelRepo>()));
  gh.factory<_i41.TravelBloc>(
      () => _i41.TravelBloc(travelRepo: gh<_i33.TravelRepo>()));
  return getIt;
}

class _$AppModule extends _i42.AppModule {}

class _$SharedPrefsInjectionModule extends _i42.SharedPrefsInjectionModule {}
