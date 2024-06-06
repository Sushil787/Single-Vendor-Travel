import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/geolocator_permission.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/bookmark/presentation/bookmark_screen.dart';
import 'package:t_client/features/chat/presentation/chat_screen.dart';
import 'package:t_client/features/orders/presentation/order_screen.dart';
import 'package:t_client/features/package/domain/repo/travel_data_source.dart';
import 'package:t_client/features/package/presentation/bloc/recommend/recommend_bloc.dart';
import 'package:t_client/features/package/presentation/bloc/travel_bloc/travel_bloc.dart';
import 'package:t_client/features/package/presentation/ui/home/widget/selected_widget.dart';
import 'package:t_client/features/package/presentation/ui/package/package_screen.dart';

import 'package:t_client/features/user/domain/repository/user_repository.dart';
import 'package:t_client/features/user/presentation/cubit/profile/cubit/profile_cubit.dart';
import 'package:t_client/features/user/presentation/ui/widgets/profile_widget.dart';

/// Home Screen
class HomeScreen extends StatefulWidget {
  ///
  const HomeScreen({required this.uid, super.key});

  /// UID
  final String uid;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  /// Scroll Controller
  ScrollController scrollController = ScrollController();
  static late String uid;
  late PageController pageController;

  /// To Hide and show bottom nav bar
  bool isVisible = true;
  @override
  void initState() {
    super.initState();
    updateKeepAlive();

    pageController = PageController();
    context.read<UserRepository>().updateToken();
    context.read<ProfileCubit>().getProfile(uid: widget.uid);
    context.read<TravelBloc>().add(const Get());
    // context.read<RecommendBloc>().add(const Recommend());

    uid = widget.uid;
    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          isVisible = false;
        });
      }
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          isVisible = true;
        });
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await determinePosition();
    });
    screens = [
      PackageScreen(
        uid: uid,
        scrollController: scrollController,
      ),
      const BookMarkScreen(),
      // const OrderScreen(),
      const OrderScreen(),
      const ChatScreen(),
    ];
  }

  int selectedIndex = 0;
  List<Widget> screens = [];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        itemCount: screens.length,
        itemBuilder: (context, index) {
          return screens[selectedIndex];
        },
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        curve: Curves.easeOutQuint,
        child: isVisible
            ? BottomNavigationBar(
                onTap: (value) {
                  selectedIndex = value;
                  pageController.animateToPage(
                    value,
                    duration: const Duration(
                      microseconds: 200,
                    ),
                    curve: Curves.decelerate,
                  );
                  if (value == 3) {
                    context.go(AppRoutes.chat);
                    return;
                  }

                  setState(() {});
                },
                unselectedFontSize: 0,
                selectedFontSize: 0,
                currentIndex: selectedIndex,
                elevation: 8,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.explore_outlined,
                    ),
                    activeIcon: SelectedIcon(
                      iconData: Icons.explore_rounded,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SelectedIcon(
                      iconData: Icons.favorite_outlined,
                    ),
                    icon: Icon(Icons.favorite_outline_outlined),
                    label: '',
                  ),
                  // BottomNavigationBarItem(
                  //   activeIcon: const SelectedIcon(
                  //     iconData: Icons.notifications,
                  //   ),
                  //   icon: Stack(
                  //     children: [
                  //       const Icon(
                  //         Icons.notifications_none_rounded,
                  //         size: 30,
                  //       ),
                  //       Positioned(
                  //         right: 6,
                  //         top: 6,
                  //         child: Container(
                  //           decoration: const BoxDecoration(
                  //             color: Colors.red,
                  //             borderRadius: BorderRadius.all(
                  //               Radius.circular(20),
                  //             ),
                  //           ),
                  //           height: 10,
                  //           width: 10,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  //   label: '',
                  // ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_outlined),
                    activeIcon: SelectedIcon(
                      iconData: Icons.shopping_bag_rounded,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SelectedIcon(
                      iconData: Icons.chat_rounded,
                    ),
                    icon: Icon(Icons.chat_outlined),
                    label: '',
                  ),
                ],
              )
            : const SizedBox.shrink(),
      ),
      floatingActionButton: floatingButton(context),
    );
  }

  /// Returns [FloatingActionButton] widget
  FloatingActionButton floatingButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: LightColor.eclipse,
      child: const Icon(Icons.add),
      onPressed: () async {
        await context.read<TravelDataSource>().getRecommended();
      },
    );
  }

  /// Builds the profile according to Internet Status
  Widget profileBlock() {
    return ProfileWidget(
      onTap: () {
        context.pushNamed(
          AppRoutes.profile,
          extra: widget.uid,
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
