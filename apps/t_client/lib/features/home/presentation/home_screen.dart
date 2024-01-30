import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/geolocator_permission.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/bookmark/presentation/bookmark_screen.dart';
import 'package:t_client/features/chat/presentation/chat_screen.dart';
import 'package:t_client/features/home/presentation/cubit/note_cubit.dart';
import 'package:t_client/features/home/presentation/package_screen.dart';

import 'package:t_client/features/user/domain/repository/user_repository.dart';
import 'package:t_client/features/user/presentation/cubit/profile/cubit/profile_cubit.dart';
import 'package:t_client/features/user/presentation/ui/profile_screen.dart';
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

class _HomeScreenState extends State<HomeScreen> {
  static late String uid;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    context.read<UserRepository>().updateToken();
    context.read<ProfileCubit>().getProfile(uid: widget.uid);
    uid = widget.uid;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await determinePosition();
    });
  }

  int selectedIndex = 0;
  List<Widget> screens = [];
  @override
  Widget build(BuildContext context) {
    screens = [
      PackageScreen(uid: uid),
      BookMarkScreen(),
      ProfileScreen(uid: uid),
      PackageScreen(uid: uid),
      const ChatScreen(),
    ];
    return Scaffold(
      body: screens[selectedIndex],
      // body: PageView.builder(
      //   itemCount: screens.length,
      //   onPageChanged: (value) {
      //     if (value == 4) {
      //       context.go(AppRoutes.chat);
      //       return;
      //     }
      //     selectedIndex = value;
      //     setState(() {});
      //   },
      //   controller: pageController,
      //   itemBuilder: (context, index) {
      //     return screens[index];
      //   },
      // ),
      bottomNavigationBar: SizedBox(
        child: BottomNavigationBar(
          onTap: (value) {
            selectedIndex = value;
            if (value == 4) {
              context.go(AppRoutes.chat);
              return;
            }
            // pageController.animateToPage(
            //   value,
            //   duration: const Duration(microseconds: 1000),
            //   curve: Curves.easeInOutExpo,
            // );
            setState(() {});
          },
          unselectedFontSize: 0,
          selectedFontSize: 0,
          currentIndex: selectedIndex,
          elevation: 8,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
              ),
              activeIcon: SelectedIcon(
                iconData: Icons.explore_rounded,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              activeIcon: SelectedIcon(
                iconData: Icons.favorite_outlined,
              ),
              icon: Icon(Icons.favorite_outline_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              activeIcon: const SelectedIcon(
                iconData: Icons.notifications,
              ),
              icon: Stack(
                children: [
                  const Icon(
                    Icons.notifications_none_rounded,
                    size: 30,
                  ),
                  Positioned(
                    right: 6,
                    top: 6,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      height: 10,
                      width: 10,
                    ),
                  ),
                ],
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              activeIcon: SelectedIcon(
                iconData: Icons.bookmark_rounded,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              activeIcon: SelectedIcon(
                iconData: Icons.chat_rounded,
              ),
              icon: Icon(Icons.chat_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  /// Returns [FloatingActionButton] widget
  FloatingActionButton floatingButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: LightColor.eclipse,
      child: const Icon(Icons.add),
      onPressed: () async {
        // await NotificationService.sendNotification(title: '', body: '');
        // await context.push(AppRoutes.chat);
        // context.push(
        //   AppRoutes.note,
        //   extra: {'note': null, 'createMode': true},
        // );
      },
    );
  }

  /// Builds the profile according to Internet Status
  BlocBuilder<NoteCubit, NoteState> profileBlock() {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        if (state is NoInternetState) {
          return const Icon(Icons.person);
        }
        return ProfileWidget(
          onTap: () {
            context.pushNamed(
              AppRoutes.profile,
              extra: widget.uid,
            );
          },
        );
      },
    );
  }
}





/// Selected Icon Data
class SelectedIcon extends StatelessWidget {
  ///
  const SelectedIcon({
    required this.iconData,
    super.key,
  });

  /// Selected Icon Data
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 58,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 229, 227, 227),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(iconData),
    );
  }
}
