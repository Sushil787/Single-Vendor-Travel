import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/assets/media_assets.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/features/chat/presentation/ui/chat_screen.dart';
import 'package:t_admin/features/dashboard/presentation/ui/dashboard_screen.dart';
import 'package:t_admin/features/order/presentation/ui/booking_screen.dart';
import 'package:t_admin/features/order/presentation/ui/cancle_request.dart';
import 'package:t_admin/features/package/presentation/ui/package_screen.dart';
import 'package:t_admin/features/user/presentation/cubit/credential/auth_cubit.dart';
import 'package:t_admin/features/user/presentation/cubit/profile/profile_cubit.dart';

import 'package:t_admin/features/user/presentation/ui/all_user_screen.dart';
import 'package:t_admin/features/user/presentation/ui/login_screen.dart';
import 'package:t_admin/features/user/presentation/ui/widgets/profile_widget.dart';

/// List of page in shell route
List<Widget> pageList = const [
  DashboardScreen(),
  AllUserScreen(),
  PackageScreen(),
  PackageBookedScreen(),
  ChatScreen(),
  CancleRequestScreen(),
];

/// Icons
List<IconData> icons = const [
  Icons.dashboard_outlined,
  Icons.account_box_outlined,
  Icons.travel_explore_outlined,
  Icons.bookmark_outline,
  Icons.chat_outlined,
  Icons.cancel_outlined,
];

/// Page Names
List<String> pageName = const [
  'Dashboard',
  'All Users',
  'Package',
  'Booking',
  'Chat',
  'Cancle Request',
];

/// Home Screen
class HomeScreen extends StatefulWidget {
  ///
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthFailure) {
          context.showSnackBar(
            message: state.message,
            toastType: ToastType.error,
          );
        }
      },
      builder: (context, AuthState state) {
        if (state is Authenticated) {
          context.read<ProfileCubit>().getProfileProfile(uid: state.uid);
          return Scaffold(
            backgroundColor: LightColor.whiteSmoke,
            appBar: AppBar(
              elevation: 20,
              title: Text(
                'Travello',
                style: context.textTheme.headlineMedium!
                    .copyWith(color: LightColor.eclipse),
              ),
              leading: Padding(
                padding: const EdgeInsets.all(4),
                child: Image.asset(MediaAsset.logo),
              ),
              actions: [
                profileBlock(state),
                HorizontalGap.s,
              ],
            ),
            // appBar: GoRouterState.of(context).location == '/${AppRoutes.home}'
            //     ?
            //     : null,

            body: Row(
              children: [
                Column(
                  children: pageList.mapIndexed(
                    (index, e) {
                      final isSelected = index == _selectedPageIndex;
                      return InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {
                          setState(() {
                            _selectedPageIndex = index;
                          });
                          switch (_selectedPageIndex) {
                            case 0:
                              return context.go('/${AppRoutes.dashboard}');
                            case 1:
                              return context.go('/${AppRoutes.users}');
                            case 2:
                              return context.go('/${AppRoutes.package}');
                            case 3:
                              return context.go('/${AppRoutes.bookedScreen}');
                            case 4:
                              return context.go('/${AppRoutes.chat}');
                            case 5:
                              return context.go('/${AppRoutes.cancleRequest}');
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 2,
                          ),
                          padding: const EdgeInsets.only(left: 20),
                          height: 44,
                          width: context.width * .15,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                8,
                              ),
                            ),
                            border: isSelected
                                ? Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: 2,
                                  )
                                : null,
                          ),
                          child: Row(
                            children: [
                              Icon(icons[pageList.indexOf(e)]),
                              HorizontalGap.m,
                              Text(
                                pageName[pageList.indexOf(e)],
                                style: context.textTheme.labelLarge
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ).toList(),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      // color: Colors.red,
                      border: Border(
                        left: BorderSide(color: LightColor.lightGrey),
                      ),
                    ),
                    child: pageList[_selectedPageIndex],
                  ),
                ),
              ],
            ),
            // floatingActionButton: floatingButton(context),
          );
        } else {
          return const LoginScreen();
        }
      },
    );
  }

  // /// Returns [FloatingActionButton] widget
  // FloatingActionButton floatingButton(BuildContext context) {
  //   return FloatingActionButton(
  //     backgroundColor: LightColor.eclipse,
  //     child: const Icon(Icons.add),
  //     onPressed: () {
  //       context.go(
  //         AppRoutes.note,
  //         extra: {'note': null, 'createMode': true},
  //       );
  //     },
  //   );
  // }

  /// Builds the profile according to Internet Status
  Widget profileBlock(Authenticated state) {
    return ProfileWidget(
      onTap: () {
        context.go(
          AppRoutes.profile,
          extra: state.uid,
        );
      },
    );
  }
}
