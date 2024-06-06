// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/screens/splash_screen.dart';
import 'package:t_admin/features/chat/presentation/ui/chat_screen.dart';
import 'package:t_admin/features/dashboard/presentation/ui/dashboard_screen.dart';
import 'package:t_admin/features/home/home_screen.dart';
import 'package:t_admin/features/order/presentation/ui/booking_screen.dart';
import 'package:t_admin/features/order/presentation/ui/cancle_request.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';

import 'package:t_admin/features/package/presentation/ui/add_package_screen.dart';
import 'package:t_admin/features/package/presentation/ui/package_screen.dart';
import 'package:t_admin/features/product/model/product_model.dart';
import 'package:t_admin/features/product/presentation/ui/add_product_screen.dart';
import 'package:t_admin/features/product/presentation/ui/product_screen.dart';
import 'package:t_admin/features/user/presentation/ui/all_user_screen.dart';
import 'package:t_admin/features/user/presentation/ui/profile_screen.dart';
import 'package:t_admin/features/vendor/vendor_screen.dart';

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
                path: AppRoutes.product,
                builder: (context, state) => const ProductsScreen(),
              ),
              GoRoute(
                path: AppRoutes.bookedScreen,
                builder: (context, state) => const PackageBookedScreen(),
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
        parentNavigatorKey:_parentKey ,
        path: AppRoutes.vendor,
        name: AppRoutes.vendor,
        builder: (context, state) => const VendorScreen(),
      ),

      GoRoute(
        parentNavigatorKey: _parentKey,
        path: AppRoutes.addProduct,
        name: AppRoutes.addProduct,
        builder: (context, state) => AddProductScreen(
          productModel: state.extra as ProductModel?,
        ),
      ),
      GoRoute(
        path: AppRoutes.profile,
        builder: (context, state) => ProfileScreen(
          uid: state.extra! as String,
        ),
      ),
    ],
  );

  /// Router Getter
  GoRouter get router => _router;
}
