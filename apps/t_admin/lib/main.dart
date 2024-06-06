import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/core/routes/app_router.dart';
import 'package:t_admin/core/theme/app_theme.dart';
import 'package:t_admin/core/theme/theme_cubit.dart';
import 'package:t_admin/di/di_setup.dart';
import 'package:t_admin/features/chat/presentation/cubit/chat/chat_cubit.dart';
import 'package:t_admin/features/chat/presentation/cubit/latest/latest_message_cubit.dart';
import 'package:t_admin/features/chat/presentation/cubit/message/message_cubit.dart';
import 'package:t_admin/features/chat/presentation/cubit/user/user_cubit.dart';
import 'package:t_admin/features/order/presentation/bloc/booking_bloc.dart';
import 'package:t_admin/features/package/presentation/bloc/travel_bloc.dart';
import 'package:t_admin/features/user/domain/repository/user_repository.dart';
import 'package:t_admin/features/user/presentation/cubit/credential/auth_cubit.dart';
import 'package:t_admin/features/user/presentation/cubit/profile/profile_cubit.dart';

import 'package:t_admin/firebase_options.dart';
import 'package:t_admin/observer.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kReleaseMode) {
    setPathUrlStrategy();
  }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );
  await configureDependencies();
  Bloc.observer = SimpleBlocObserver();
  runApp(
    RepositoryProvider(
      create: (context) =>  getIt<UserRepository>(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(),
          ),
          BlocProvider(
            create: (context) => getIt<BookingBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<AuthCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<ProfileCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<UserCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<TravelBloc>(),
          ),
          BlocProvider(create: (context) => getIt<ChatCubit>()),
          BlocProvider(create: (context) => getIt<LatestMessageCubit>()),
          BlocProvider(create: (context) => getIt<MessageCubit>()),
        ],
        child: const MyApp(),
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
    if (kDebugMode) {
      WidgetsBinding.instance.removeObserver(this);
    }
  }

  final routerConfig = AppRouter();

  ///
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig.router,
      title: 'Travello Admin',
      theme: AppTheme.lightThemeData,
      themeMode: ThemeMode.light,
    );
  }
}
