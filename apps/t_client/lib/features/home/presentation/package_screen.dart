import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:panorama_viewer/panorama_viewer.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/core/widgets/custom_image_widget.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/bookmark/presentation/bookmark_screen.dart';
import 'package:t_client/features/home/presentation/widgets/app_bar.dart';
import 'package:t_client/features/home/presentation/widgets/featured_place_widget.dart';
import 'package:t_client/features/home/presentation/widgets/package_widget.dart';
import 'package:t_client/features/home/presentation/widgets/recently_added_package.dart';
import 'package:t_client/features/home/presentation/widgets/scroll_bar.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';
import 'package:t_client/features/user/presentation/cubit/profile/cubit/profile_cubit.dart';
import 'package:t_client/homes/data/model/travel_package_model.dart';

/// Home Screen

class PackageScreen extends StatefulWidget {
  ///
  const PackageScreen({required this.uid, super.key});

  /// UID
  final String uid;
  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    context.read<UserRepository>().updateToken();
    context.read<ProfileCubit>().getProfile(uid: widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 18, right: 18),
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: CustomAppBar(uid: widget.uid),
          ),
          const SliverToBoxAdapter(
            child: VerticalGap.l,
          ),
          SliverToBoxAdapter(
            child: CustomTextField(
              prefixIcon: Icons.search,
              hintText: 'Search place and explore',
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: context.height * .39,
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Featured Place',
                    style: context.textTheme.headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  VerticalGap.s,
                  const FeaturedPageBuilder(),
                ],
              ),
            ),
          ),
          // const SliverToBoxAdapter(child: BuildScrollBar()),
          SliverToBoxAdapter(child: RecentlyAddedPackages()),
          SliverToBoxAdapter(child: Packages()),
        ],
      ),
    );
  }
}

class Packages extends StatefulWidget {
  const Packages({Key? key});

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalGap.l,
          Text(
            'Packages',
            style: context.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          VerticalGap.m,
          MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return PackageWidget();
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

///
class FeaturedPageBuilder extends StatefulWidget {
  ///
  const FeaturedPageBuilder({
    super.key,
  });

  @override
  State<FeaturedPageBuilder> createState() => _FeaturedPageBuilderState();
}

class _FeaturedPageBuilderState extends State<FeaturedPageBuilder> {
  late PageController _pageController;
  late Timer _timer;

  /// Page index
  int _index = 0;
  List<Widget> featuredItem = [
    const FeaturedPlaceWidget(),
    const FeaturedPlaceWidget(),
    const FeaturedPlaceWidget(),
    const FeaturedPlaceWidget(),
  ];

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_index < featuredItem.length - 1) {
        _index++;
      } else {
        _index = 0;
      }
      _pageController.animateToPage(
        _index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    if (mounted) {
      startTimer();
      _pageController = PageController();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .33,
      child: Column(
        children: [
          SizedBox(
            height: context.height * .29,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                _index = value;
                setState(() {});
              },
              itemCount: featuredItem.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: FeaturedPlaceWidget(),
                );
              },
            ),
          ),
          VerticalGap.l,
          SizedBox(
            height: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  featuredItem.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: index == _index
                          ? LightColor.eclipse
                          : LightColor.lightGrey,
                    ),
                    margin: const EdgeInsets.all(2),
                    height: 8,
                    width: index == _index ? 22 : 8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
