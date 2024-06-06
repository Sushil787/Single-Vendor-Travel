import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/bloc/recommend/recommend_bloc.dart';
import 'package:t_client/features/package/presentation/bloc/travel_bloc/travel_bloc.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/app_bar.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/featured_place_widget.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/package_widget.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/recently_added_package.dart';

import 'package:t_client/features/user/presentation/cubit/profile/cubit/profile_cubit.dart';

/// Packages
List<TravelPackageModel> packages = [];

/// Package Home Screen
class PackageScreen extends StatefulWidget {
  ///
  const PackageScreen({
    required this.uid,
    required this.scrollController,
    super.key,
  });

  /// UID
  final String uid;

  /// Scroll controller
  final ScrollController scrollController;
  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    // context.read<UserRepository>().updateToken();
    context.read<ProfileCubit>().getProfile(uid: widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
        child: BlocConsumer<TravelBloc, TravelPackageState>(
          listener: (context, state) {
            if (state is TravelPackageError) {
              context.showSnackBar(
                message: state.message,
                toastType: ToastType.error,
              );
            }
          },
          builder: (context, state) {
            if (state is TravelPackageLoaded) {
              packages = state.packages;
              return CustomScrollView(
                controller: widget.scrollController,
                slivers: [
                  SliverToBoxAdapter(
                    child: CustomAppBar(uid: widget.uid),
                  ),
                  const SliverToBoxAdapter(
                    child: VerticalGap.l,
                  ),
                  SliverToBoxAdapter(
                    child: CustomTextField(
                      onTap: () {
                        context.push(AppRoutes.search);
                        focusNode.dispose();
                      },
                      focusNode: focusNode,
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Featured Place',
                            style: context.textTheme.headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          VerticalGap.s,
                          FeaturedPageBuilder(
                            travelPackageModels: state.packages,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: BlocBuilder<RecommendBloc, RecommendState>(
                      builder: (context, state) {
                        if (state is RecommendLoaded) {
                          return state.packages.isEmpty
                              ? const SizedBox.shrink()
                              : Container(
                                  margin: const EdgeInsets.only(bottom: 8),
                                  child: RecentlyAddedPackages(
                                    travelPackageModels: state.packages,
                                    title: 'Package Recommended',
                                  ),
                                );
                        }
                        if (state is RecommendLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: RecentlyAddedPackages(
                      travelPackageModels: state.packages,
                      title: 'Recently Added',
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Packages(
                      packages: state.packages,
                    ),
                  ),
                ],
              );
            }
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return const Center(
              child: Text('Error Loading Data'),
            );
          },
        ),
      ),
    );
  }
}

///
class Packages extends StatefulWidget {
  ///
  Packages({
    required this.packages,
    super.key,
  });

  /// Packages Model
  List<TravelPackageModel> packages;

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: widget.packages.isEmpty
          ? Container(
              alignment: Alignment.center,
              height: context.height * .7,
              child: Text(
                'No Package Found',
                style: context.textTheme.headlineSmall,
              ),
            )
          : Column(
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
                    reverse: true,
                    itemBuilder: (context, index) {
                      return PackageWidget(
                        travelPackageModel: widget.packages[index],
                      );
                    },
                    itemCount: widget.packages.length,
                  ),
                ),
              ],
            ),
    );
  }
}

///
class FeaturedPageBuilder extends StatefulWidget {
  ///
  FeaturedPageBuilder({
    required this.travelPackageModels,
    super.key,
  });

  /// Travel Pacakge Model
  List<TravelPackageModel> travelPackageModels;
  @override
  State<FeaturedPageBuilder> createState() => _FeaturedPageBuilderState();
}

class _FeaturedPageBuilderState extends State<FeaturedPageBuilder> {
  late PageController _pageController;
  late Timer _timer;

  /// Page index
  int _index = 0;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
      if (_index < 4 - 1) {
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
              itemCount: 4,
              itemBuilder: (context, index) {
                final list = widget.travelPackageModels
                    .where(
                      (element) => element.isFeatured,
                    )
                    .toList();
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: FeaturedPlaceWidget(
                    travelPackageModel: list[index],
                  ),
                );
              },
            ),
          ),
          VerticalGap.m,
          SizedBox(
            height: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  4,
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
