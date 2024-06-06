// ignore_for_file: cast_nullable_to_non_nullable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/screens/splash_screen.dart';
import 'package:t_admin/di/di_setup.dart';
import 'package:t_admin/features/chat/presentation/ui/chat_screen.dart';
import 'package:t_admin/features/dashboard/presentation/ui/dashboard_screen.dart';
import 'package:t_admin/features/home/home_screen.dart';
import 'package:t_admin/features/order/presentation/ui/booking_screen.dart';
import 'package:t_admin/features/order/presentation/ui/cancle_request.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';

import 'package:t_admin/features/package/presentation/ui/add_package_screen.dart';
import 'package:t_admin/features/package/presentation/ui/package_screen.dart';
import 'package:t_admin/features/user/presentation/ui/all_user_screen.dart';
import 'package:t_admin/features/user/presentation/ui/profile_screen.dart';

/// AppRouter
class AppRouter {
  static final _parentKey = GlobalKey<NavigatorState>();
  static final _shellKey = GlobalKey<NavigatorState>();

  final GoRouter _router = GoRouter(
    initialLocation: AppRoutes.splash,
    initialExtra: 'admin',
    navigatorKey: _parentKey,
    routes: [
      ShellRoute(
        navigatorKey: _shellKey,
        builder: (context, state, child) => const HomeScreen(),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: AppRoutes.dashboard,
                builder: (context, state) => const DashboardScreen(),
              ),
              GoRoute(
                path: AppRoutes.users,
                builder: (context, state) => const AllUserScreen(),
              ),
              GoRoute(
                path: AppRoutes.cancleRequest,
                builder: (context, state) => const CancleRequestScreen(),
              ),
              GoRoute(
                path: AppRoutes.package,
                builder: (context, state) => const PackageScreen(),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _parentKey,
                    path: '${AppRoutes.addPackage}/:mode',
                    builder: (context, state) => AddPackageScreen(
                      createMode: bool.parse(state.pathParameters['mode']!),
                      travelPackageModel: state.extra as TravelPackageModel?,
                    ),
                  ),
                ],
              ),
              GoRoute(
                path: AppRoutes.bookedScreen,
                builder: (context, state) => const PackageBookedScreen(),
              ),
              GoRoute(
                path: AppRoutes.chat,
                builder: (context, state) => const ChatScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.splash,
        name: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) => ProfileScreen(
          uid: state.extra! as String,
        ),
      ),
    ],
    redirect: (context, state) {
      final user = getIt<FirebaseAuth>().currentUser;
      if (user?.uid == null || user!.uid.isEmpty) {
        return AppRoutes.home;
      }
      return null;
    },
  );

  /// Router Getter
  GoRouter get router => _router;
}
