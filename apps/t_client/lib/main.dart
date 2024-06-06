import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

import 'package:t_client/core/routes/app_router.dart';
import 'package:t_client/core/services/fcm_services.dart';
import 'package:t_client/core/services/notification_service.dart';
import 'package:t_client/core/theme/app_theme.dart';
import 'package:t_client/core/theme/theme_cubit.dart';
import 'package:t_client/di/di_setup.dart';
import 'package:t_client/features/bookmark/presentation/bloc/bloc/bookmark_bloc.dart';
import 'package:t_client/features/chat/domain/chat_data_repo.dart';
import 'package:t_client/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:t_client/features/orders/presentation/bloc/order_bloc.dart';
import 'package:t_client/features/package/domain/repo/travel_data_source.dart';
import 'package:t_client/features/package/presentation/bloc/recommend/recommend_bloc.dart';
import 'package:t_client/features/package/presentation/bloc/travel_bloc/travel_bloc.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';
import 'package:t_client/features/user/presentation/cubit/credential/cubit/auth_cubit.dart';
import 'package:t_client/features/user/presentation/cubit/profile/cubit/profile_cubit.dart';
import 'package:t_client/features/user/presentation/cubit/profile/cubit/update_profile_cubit.dart';
import 'package:t_client/firebase_options.dart';
import 'package:t_client/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await NotificationService.initialize();
  FcmServices.initializeFirebase();
  await configureDependencies();
  Bloc.observer = SimpleBlocObserver();
  runApp(
    MultiRepositoryProvider(
      providers: [
        // getRecommended
        RepositoryProvider(
          create: (context) => getIt<ChatDataRepository>(),
        ),
        RepositoryProvider(
          create: (context) => getIt<UserRepository>(),
        ),
        RepositoryProvider(
          create: (context) => getIt<TravelDataSource>(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
          BlocProvider(
            create: (context) => getIt<AuthCubit>(),
          ),
          BlocProvider(create: (context) => getIt<UpdateProfileCubit>()),
          BlocProvider(
            create: (context) => getIt<ProfileCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<OrderBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<ChatCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<TravelBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<BookmarkBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<RecommendBloc>(),
          ),
        ],
        child: DevicePreview(
          enabled: false,
          builder: (context) => const MyApp(),
        ),
      ),
    ),
  );
}

/// MyApp
class MyApp extends StatefulWidget {
  ///
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      WidgetsBinding.instance.addObserver(this);
    }
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  final routerConfig = AppRouter();

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        KhaltiLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ne', 'NP'),
      ],
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig.router,
      title: 'Travello',
      theme: AppTheme.lightThemeData,
      themeMode: ThemeMode.light,
    );
  }
}
