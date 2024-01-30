// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/screens/splash_screen.dart';
import 'package:t_client/core/screens/welcome/welcome_screen.dart';
import 'package:t_client/features/chat/presentation/chat_screen.dart';
import 'package:t_client/features/home/domain/model/notes_model.dart';

import 'package:t_client/features/home/presentation/home_screen.dart';
import 'package:t_client/features/home/presentation/main_screen.dart';

import 'package:t_client/features/user/presentation/ui/login_screen.dart';
import 'package:t_client/features/user/presentation/ui/profile_screen.dart';
import 'package:t_client/features/user/presentation/ui/signup_screen.dart';

/// AppRouter
class AppRouter {
  // final FirebaseAuth _auth  = getIt<FirebaseAuth>();
  final GoRouter _router = GoRouter(
    initialLocation: AppRoutes.splash,

    // redirect: (context, state){
    //   if(_auth.currentUser?.uid == null){

    //   }
    //   return null;
    // },
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) {
          return HomeScreen(
            uid: state.extra! as String,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.profile,
        name: AppRoutes.profile,
        builder: (context, state) => ProfileScreen(
          uid: state.extra! as String,
        ),
      ),
      GoRoute(
        path: AppRoutes.welcome,
        name: AppRoutes.welcome,
        pageBuilder: (context, state) => CustomTransitionPage<void>(
          key: state.pageKey,
          child: const WelcomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        ),
      ),
      GoRoute(
        path: AppRoutes.chat,
        name: AppRoutes.chat,
        builder: (context, state) => const ChatScreen(),
      ),
      GoRoute(
        path: AppRoutes.main,
        name: AppRoutes.main,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        name: AppRoutes.login,
        path: AppRoutes.login,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: AppRoutes.signup,
        path: AppRoutes.signup,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      // GoRoute(
      //   path: AppRoutes.note,
      //   name: AppRoutes.note,
      //   builder: (context, state) {
      //     final args = state.extra as Map<String, dynamic>;
      //     return NoteScreen(
      //       createMode: args['createMode'] as bool,
      //       note: args['note'] as NoteModel?,
      //     );
      //   },
      // ),
    ],
  );

  /// Router Getter
  GoRouter get router => _router;
}
