// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/screens/splash_screen.dart';
import 'package:t_client/core/screens/welcome/welcome_screen.dart';
import 'package:t_client/features/chat/presentation/chat_screen.dart';
import 'package:t_client/features/orders/presentation/check_out_screen.dart';
import 'package:t_client/features/orders/presentation/order_screen.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/ui/home/home_screen.dart';
import 'package:t_client/features/package/presentation/ui/home/main_screen.dart';
import 'package:t_client/features/package/presentation/ui/package/detail/package_detail_screen.dart';
import 'package:t_client/features/package/presentation/ui/package/detail/panaromic_view.dart';
import 'package:t_client/features/package/presentation/ui/search/search_screen.dart';
import 'package:t_client/features/user/presentation/ui/login_screen.dart';
import 'package:t_client/features/user/presentation/ui/profile_screen.dart';
import 'package:t_client/features/user/presentation/ui/signup_screen.dart';

/// NAvigatoro key
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
        path: AppRoutes.order,
        name: AppRoutes.order,
        builder: (context, state) => const OrderScreen(),
      ),
      GoRoute(
        path: AppRoutes.panaromic,
        name: AppRoutes.panaromic,
        builder: (context, state) => PanaromicViewScreen(
          imageUrl: state.extra! as String,
        ),
      ),
      GoRoute(
        path: AppRoutes.checkout,
        name: AppRoutes.checkout,
        builder: (context, state) => CheckoutScreen(
          travelPackageModel: state.extra! as TravelPackageModel,
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
      GoRoute(
        path: AppRoutes.search,
        name: AppRoutes.search,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: AppRoutes.packageDetail,
        name: AppRoutes.packageDetail,
        builder: (context, state) => PackageDetailScreen(
          travelPackageModel: state.extra as TravelPackageModel,
        ),
      ),
    ],
  );

  /// Router Getter
  GoRouter get router => _router;
}
