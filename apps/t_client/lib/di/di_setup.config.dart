// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../core/helper/network_info.dart' as _i7;
import '../features/chat/data/remote/chat_data_repo_impl.dart' as _i21;
import '../features/chat/domain/chat_data_repo.dart' as _i20;
import '../features/chat/presentation/cubit/chat_cubit.dart' as _i25;
import '../features/home/data/repository/note_repo_impl.dart' as _i9;
import '../features/home/domain/repository/note_repository.dart' as _i8;
import '../features/home/presentation/cubit/note_cubit.dart' as _i22;
import '../features/user/data/remote_data_source/user_remote_data_source_impl.dart'
    as _i16;
import '../features/user/data/repository/user_repository_impl.dart' as _i18;
import '../features/user/domain/repository/user_remote_data_source.dart'
    as _i15;
import '../features/user/domain/repository/user_repository.dart' as _i17;
import '../features/user/presentation/cubit/credential/cubit/auth_cubit.dart'
    as _i19;
import '../features/user/presentation/cubit/profile/cubit/profile_cubit.dart'
    as _i23;
import '../homes/data/repo/travel_datasource_impl.dart' as _i12;
import '../homes/data/repo/travel_repo_impl.dart' as _i14;
import '../homes/domain/repo/package_data_source.dart' as _i11;
import '../homes/domain/repo/travel_repo.dart' as _i13;
import '../homes/presentation/bloc/travel_bloc.dart' as _i24;
import 'app_module.dart' as _i26;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
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
  gh.singleton<_i3.FirebaseAuth>(appModule.auth);
  gh.singleton<_i4.FirebaseFirestore>(appModule.store);
  gh.singleton<_i5.FirebaseStorage>(appModule.firebaseStorage);
  gh.singleton<_i6.GoogleSignIn>(appModule.googleSignin);
  gh.factory<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl());
  gh.factory<_i8.NoteRepository>(() => _i9.NoteRepoImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        firebaseStorage: gh<_i5.FirebaseStorage>(),
        firebaseAuth: gh<_i3.FirebaseAuth>(),
      ));
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => sharedPrefsInjectionModule.prefs,
    preResolve: true,
  );
  gh.factory<_i11.TravelDataSource>(
      () => _i12.TravelDataSourceImpl(firestore: gh<_i4.FirebaseFirestore>()));
  gh.factory<_i13.TravelRepo>(
      () => _i14.TravelRepoImpl(travelDataSource: gh<_i11.TravelDataSource>()));
  gh.factory<_i15.UserRemoteDataSource>(() => _i16.UserRemoteDataSourceImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        firebaseAuth: gh<_i3.FirebaseAuth>(),
        googleSignIn: gh<_i6.GoogleSignIn>(),
      ));
  gh.factory<_i17.UserRepository>(() => _i18.UserRepositoryImpl(
      userRemoteDataSource: gh<_i15.UserRemoteDataSource>()));
  gh.singleton<_i19.AuthCubit>(_i19.AuthCubit(
    userRepository: gh<_i17.UserRepository>(),
    networkInfo: gh<_i7.NetworkInfo>(),
  ));
  gh.factory<_i20.ChatDataRepository>(() => _i21.ChatDataRepositoryImpl(
        firebaseFirestore: gh<_i4.FirebaseFirestore>(),
        firebaseAuth: gh<_i3.FirebaseAuth>(),
      ));
  gh.factory<_i22.NoteCubit>(() => _i22.NoteCubit(
        noteRepository: gh<_i8.NoteRepository>(),
        networkInfo: gh<_i7.NetworkInfo>(),
      ));
  gh.factory<_i23.ProfileCubit>(() => _i23.ProfileCubit(
        userRepository: gh<_i17.UserRepository>(),
        networkInfo: gh<_i7.NetworkInfo>(),
      ));
  gh.factory<_i24.TravelBloc>(
      () => _i24.TravelBloc(travelRepo: gh<_i13.TravelRepo>()));
  gh.factory<_i25.ChatCubit>(
      () => _i25.ChatCubit(chatDataRepository: gh<_i20.ChatDataRepository>()));
  return getIt;
}

class _$AppModule extends _i26.AppModule {}

class _$SharedPrefsInjectionModule extends _i26.SharedPrefsInjectionModule {}
