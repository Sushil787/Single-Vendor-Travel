// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/screens/preferences_screen.dart';
import 'package:t_client/core/screens/splash_screen.dart';
import 'package:t_client/core/screens/welcome/welcome_screen.dart';
import 'package:t_client/features/bot/presentation/ui/chat_bot_screen.dart';
import 'package:t_client/features/chat/presentation/chat_screen.dart';
import 'package:t_client/features/maps/presentation/map_screen.dart';
import 'package:t_client/features/orders/presentation/check_out_screen.dart';
import 'package:t_client/features/orders/presentation/order_screen.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/ui/home/home_screen.dart';
import 'package:t_client/features/package/presentation/ui/home/main_screen.dart';
import 'package:t_client/features/package/presentation/ui/package/detail/package_detail_screen.dart';
import 'package:t_client/features/package/presentation/ui/package/detail/panaromic_view.dart';
import 'package:t_client/features/package/presentation/ui/search/search_screen.dart';
import 'package:t_client/features/user/presentation/ui/login_screen.dart';
import 'package:t_client/features/user/presentation/ui/password-reset/presentation/password_reset_screen.dart';
import 'package:t_client/features/user/presentation/ui/profile_screen.dart';
import 'package:t_client/features/user/presentation/ui/signup_screen.dart';


/// Navigator key
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

/// AppRouter
class AppRouter {
  final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: HomeScreen(
            uid: state.extra! as String,
          ),
        ),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: AppRoutes.forgotPassword,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const ForgotPasswordScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.map,
        name: AppRoutes.map,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const MapScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.profile,
        name: AppRoutes.profile,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: ProfileScreen(
            uid: state.extra! as String,
          ),
        ),
      ),
      GoRoute(
        path: AppRoutes.preference,
        name: AppRoutes.preference,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const UserPreferencesScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.order,
        name: AppRoutes.order,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const OrderScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.panaromic,
        name: AppRoutes.panaromic,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: PanaromicViewScreen(
            imageUrl: state.extra! as String,
          ),
        ),
      ),
      GoRoute(
        path: AppRoutes.checkout,
        name: AppRoutes.checkout,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: CheckoutScreen(
            travelPackageModel: state.extra! as TravelPackageModel,
          ),
        ),
      ),
      GoRoute(
        path: AppRoutes.welcome,
        name: AppRoutes.welcome,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const WelcomeScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.chat,
        name: AppRoutes.chat,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const ChatScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.main,
        name: AppRoutes.main,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const MainScreen(),
        ),
      ),
      GoRoute(
        name: AppRoutes.login,
        path: AppRoutes.login,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        name: AppRoutes.signup,
        path: AppRoutes.signup,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const SignUpScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.search,
        name: AppRoutes.search,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const SearchScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.packageDetail,
        name: AppRoutes.packageDetail,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: PackageDetailScreen(
            travelPackageModel: state.extra as TravelPackageModel,
          ),
        ),
      ),
      GoRoute(
        path: AppRoutes.chatBot,
        name: AppRoutes.chatBot,
        pageBuilder: (context, state) => FadeTransitionPage(
          key: state.pageKey,
          child: const ChatBotScreen(),
        ),
      ),
    ],
  );

  /// Router Getter
  GoRouter get router => _router;
}

/// The `FadeTransitionPage` class is a custom transition page that applies a fade animation to its
/// child widget.
class FadeTransitionPage extends CustomTransitionPage<void> {
  FadeTransitionPage({
    required LocalKey super.key,
    required super.child,
  }) : super(
          transitionsBuilder: (c, animation, a2, child) => FadeTransition(
            opacity: animation.drive(CurveTween(curve: Curves.easeIn)),
            child: child,
          ),
        );
}

