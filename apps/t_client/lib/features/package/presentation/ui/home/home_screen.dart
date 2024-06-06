import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/geolocator_permission.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/bookmark/presentation/bookmark_screen.dart';
import 'package:t_client/features/chat/presentation/chat_screen.dart';
import 'package:t_client/features/orders/presentation/order_screen.dart';
import 'package:t_client/features/package/presentation/bloc/travel_bloc/travel_bloc.dart';
import 'package:t_client/features/package/presentation/ui/home/widget/selected_widget.dart';
import 'package:t_client/features/package/presentation/ui/package/package_screen.dart';

import 'package:t_client/features/user/presentation/cubit/profile/cubit/profile_cubit.dart';
import 'package:t_client/features/user/presentation/ui/widgets/profile_widget.dart';

/// User Location value notifier
ValueNotifier<LatLng> userLocation = ValueNotifier(
  const LatLng(
    27.7172,
    85.3240,
  ),
);

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
    context.read<ProfileCubit>().getProfile(uid: widget.uid);
    context.read<TravelBloc>().add(const Get());
    // context.read<RecommendBloc>().add(const Recommend());
    uid = widget.uid;
    scrollController.addListener(
      () {
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
      },
    );
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        final position = await determinePosition();
        userLocation.value = LatLng(position.latitude, position.longitude);
      },
    );
    screens = [
      PackageScreen(
        uid: uid,
        scrollController: scrollController,
      ),
      const BookMarkScreen(),
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
      child: const Icon(Icons.person),
      onPressed: () {
        context.push(AppRoutes.chatBot);
        // await getIt<SharedPreferences>().setBool('firstTime', true);
        // // context.read<RecommendBloc>().add(const Recommend());
        // await context.push(AppRoutes.map);
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
