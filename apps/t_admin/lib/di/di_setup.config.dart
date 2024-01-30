// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:dio/dio.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_storage/firebase_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../core/dio/dio_client.dart' as _i6;
import '../core/helper/network_info.dart' as _i11;
import '../core/utils/firebase_storage_utils.dart' as _i10;
import '../features/booking/data/repo/booking_repo_impl.dart' as _i4;
import '../features/booking/domain/repo/booking_repo.dart' as _i3;
import '../features/chat/data/remote_data_source/chat_remotedata_source_impl.dart'
    as _i25;
import '../features/chat/data/repository/chat_repository_impl.dart' as _i27;
import '../features/chat/domain/repository/chat_remotedata_source.dart' as _i24;
import '../features/chat/domain/repository/chat_repository.dart' as _i26;
import '../features/chat/presentation/cubit/chat/chat_cubit.dart' as _i34;
import '../features/chat/presentation/cubit/latest/latest_message_cubit.dart'
    as _i28;
import '../features/chat/presentation/cubit/message/message_cubit.dart' as _i29;
import '../features/chat/presentation/cubit/user/user_cubit.dart' as _i33;
import '../features/notes/cubit/note_cubit.dart' as _i30;
import '../features/notes/data/repository/note_repo_impl.dart' as _i13;
import '../features/notes/domain/repository/note_repository.dart' as _i12;
import '../features/package/data/repo/travel_datasource_impl.dart' as _i16;
import '../features/package/data/repo/travel_repo_impl.dart' as _i18;
import '../features/package/domain/repo/package_data_source.dart' as _i15;
import '../features/package/domain/repo/travel_repo.dart' as _i17;
import '../features/package/presentation/bloc/travel_bloc.dart' as _i32;
import '../features/user/data/remote_data_source/user_remote_data_source_impl.dart'
    as _i20;
import '../features/user/data/repository/user_repository_impl.dart' as _i22;
import '../features/user/domain/repository/user_remote_data_source.dart'
    as _i19;
import '../features/user/domain/repository/user_repository.dart' as _i21;
import '../features/user/presentation/cubit/credential/auth_cubit.dart' as _i23;
import '../features/user/presentation/cubit/profile/profile_cubit.dart' as _i31;
import 'app_module.dart' as _i35;

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
  gh.factory<_i3.BookingRepo>(() => _i4.BookingRepoImpl());
  gh.singleton<_i5.Dio>(appModule.dio);
  gh.factory<_i6.DioClient>(() => _i6.DioClient(gh<_i5.Dio>()));
  gh.singleton<_i7.FirebaseAuth>(appModule.auth);
  gh.singleton<_i8.FirebaseFirestore>(appModule.store);
  gh.singleton<_i9.FirebaseStorage>(appModule.firebaseStorage);
  gh.factory<_i10.FirebaseStorageUitls>(() =>
      _i10.FirebaseStorageUitls(firebaseStorage: gh<_i9.FirebaseStorage>()));
  gh.factory<_i11.NetworkInfo>(() => _i11.NetworkInfoImpl());
  gh.factory<_i12.NoteRepository>(() => _i13.NoteRepoImpl(
        firebaseFirestore: gh<_i8.FirebaseFirestore>(),
        firebaseStorage: gh<_i9.FirebaseStorage>(),
        firebaseAuth: gh<_i7.FirebaseAuth>(),
      ));
  await gh.factoryAsync<_i14.SharedPreferences>(
    () => sharedPrefsInjectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i15.TravelDataSource>(
      () => _i16.TravelDataSourceImpl(firestore: gh<_i8.FirebaseFirestore>()));
  gh.factory<_i17.TravelRepo>(
      () => _i18.TravelRepoImpl(travelDataSource: gh<_i15.TravelDataSource>()));
  gh.factory<_i19.UserRemoteDataSource>(() => _i20.UserRemoteDataSourceImpl(
        firebaseFirestore: gh<_i8.FirebaseFirestore>(),
        firebaseAuth: gh<_i7.FirebaseAuth>(),
      ));
  gh.factory<_i21.UserRepository>(() => _i22.UserRepositoryImpl(
      userRemoteDataSource: gh<_i19.UserRemoteDataSource>()));
  gh.singleton<_i23.AuthCubit>(_i23.AuthCubit(
    userRepository: gh<_i21.UserRepository>(),
    networkInfo: gh<_i11.NetworkInfo>(),
  ));
  gh.factory<_i24.ChatDataSource>(() => _i25.ChatDataSourceImpl(
        firebaseFirestore: gh<_i8.FirebaseFirestore>(),
        firebaseAuth: gh<_i7.FirebaseAuth>(),
        dioClient: gh<_i6.DioClient>(),
      ));
  gh.factory<_i26.ChatRepository>(
      () => _i27.ChatRepositoryImpl(chatDataSource: gh<_i24.ChatDataSource>()));
  gh.singleton<_i28.LatestMessageCubit>(
      _i28.LatestMessageCubit(chatRepository: gh<_i26.ChatRepository>()));
  gh.singleton<_i29.MessageCubit>(
      _i29.MessageCubit(chatRepository: gh<_i26.ChatRepository>()));
  gh.factory<_i30.NoteCubit>(() => _i30.NoteCubit(
        noteRepository: gh<_i12.NoteRepository>(),
        networkInfo: gh<_i11.NetworkInfo>(),
      ));
  gh.factory<_i31.ProfileCubit>(() => _i31.ProfileCubit(
        userRepository: gh<_i21.UserRepository>(),
        networkInfo: gh<_i11.NetworkInfo>(),
      ));
  gh.factory<_i32.TravelBloc>(
      () => _i32.TravelBloc(travelRepo: gh<_i17.TravelRepo>()));
  gh.factory<_i33.UserCubit>(
      () => _i33.UserCubit(chatRepository: gh<_i26.ChatRepository>()));
  gh.singleton<_i34.ChatCubit>(
      _i34.ChatCubit(chatRepository: gh<_i26.ChatRepository>()));
  return getIt;
}

class _$AppModule extends _i35.AppModule {}

class _$SharedPrefsInjectionModule extends _i35.SharedPrefsInjectionModule {}
