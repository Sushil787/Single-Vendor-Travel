import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/core/widgets/custom_image_widget.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/core/widgets/ios_back_button.dart';
import 'package:t_client/features/bookmark/presentation/bloc/bloc/bookmark_bloc.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/bloc/comment/comment_cubit.dart';
import 'package:t_client/features/package/presentation/bloc/cubit/weather_cubit.dart';
import 'package:t_client/features/package/presentation/ui/package/detail/widget/build_add_favourite.dart';
import 'package:t_client/features/package/presentation/ui/package/detail/widget/comment_lists.dart';
import 'package:t_client/features/package/presentation/ui/package/detail/widget/item_row.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/build_package_price.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/icon_text_row.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

/// Package Detail Screen
class PackageDetailScreen extends StatefulWidget {
  ///
  const PackageDetailScreen({
    required this.travelPackageModel,
    super.key,
  });

  /// [TravelPackageModel] instance
  final TravelPackageModel travelPackageModel;

  @override
  State<PackageDetailScreen> createState() => _PackageDetailScreenState();
}

class _PackageDetailScreenState extends State<PackageDetailScreen> {
  late PageController _pageController;
  late Timer _timer;
  String? uuid;
  TextEditingController commenTController = TextEditingController();
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
    context.read<BookmarkBloc>().getBookMarks();
    context.read<WeatherCubit>().getWeather(
          lat: widget.travelPackageModel.latitude.toString(),
          long: widget.travelPackageModel.longitude.toString(),
        );

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      uuid = await context.read<UserRepository>().getCurrentUId();
    });
    context
        .read<CommentCubit>()
        .getComments(packageId: widget.travelPackageModel.uuid);
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

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    /// Need to remove the app bar systemoverlay
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: context.height * .4,
                child: buildImagePage(context),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildIconTextRow(
                          onTap: () {},
                          first: const Icon(
                            Icons.location_on,
                            size: 26,
                            color: LightColor.grey,
                          ),
                          text: Text(
                            widget.travelPackageModel.location,
                            style: context.textTheme.bodySmall?.copyWith(
                              fontSize: 16,
                              color: LightColor.grey,
                            ),
                          ),
                        ),
                        BuildAddFavouriteWidget(
                          travelPackageModel: widget.travelPackageModel,
                        ),
                      ],
                    ),
                    VerticalGap.m,
                    Text(
                      widget.travelPackageModel.packageName,
                      style: context.textTheme.bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    VerticalGap.s,
                    Row(
                      children: [
                        BuildIconTextRow(
                          first: const Icon(
                            Icons.favorite,
                            size: 24,
                            color: LightColor.orange,
                          ),
                          text: Text(
                            // ignore: prefer_interpolation_to_compose_strings
                            widget.travelPackageModel.favourite.toString() +
                                ' People like this',
                            style: context.textTheme.bodySmall?.copyWith(
                              fontSize: 14,
                              color: LightColor.grey,
                            ),
                          ),
                        ),
                        HorizontalGap.l,
                        const Expanded(child: SizedBox.shrink()),
                        buildProductPrice(
                          context,
                          price: widget.travelPackageModel.perHeadPerNight,
                          discount: widget.travelPackageModel.discount,
                        ),
                        Text(
                          ' Perday',
                          style: context.textTheme.labelMedium,
                        ),
                      ],
                    ),
                    VerticalGap.m,
                    Text(
                      widget.travelPackageModel.description,
                      textAlign: TextAlign.justify,
                      style: context.textTheme.bodySmall?.copyWith(
                          // fontWeight: FontWeight.bold,
                          ),
                    ),
                    VerticalGap.m,
                    CustomImageWidget(
                      urlImage: widget.travelPackageModel.featuredImage,
                    ),
                    VerticalGap.m,
                    SizedBox(
                      height: 40,
                      child: CustomElevatedButton(
                        btnVerticalPadding: 8,
                        btnFontSize: 16,
                        onButtonPressed: () {
                          context.push(
                            AppRoutes.panaromic,
                            extra: widget.travelPackageModel.featuredImage,
                          );
                        },
                        buttonText: 'View 360 Panaromic View',
                      ),
                    ),
                    VerticalGap.m,
                    Text(
                      'Current Weather of ${widget.travelPackageModel.location}',
                      style: context.textTheme.bodyMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    VerticalGap.s,
                    buildWeather(),
                    BuildInclusiveExclusive(
                      title: 'Inclusive',
                      items: widget.travelPackageModel.inclusive,
                    ),
                    BuildInclusiveExclusive(
                      title: 'Highlights',
                      items: widget.travelPackageModel.highlights,
                    ),
                    VerticalGap.m,
                    SizedBox(
                      height: 40,
                      child: CustomElevatedButton(
                        btnVerticalPadding: 8,
                        btnFontSize: 16,
                        onButtonPressed: () {
                          context.push(
                            AppRoutes.checkout,
                            extra: widget.travelPackageModel,
                          );
                        },
                        buttonText: 'Book Now',
                      ),
                    ),
                    VerticalGap.m,
                    Text(
                      'Comments',
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    VerticalGap.s,
                    SizedBox(
                      height: 50,
                      child: CustomTextField(
                        suffixIcon: Icons.add,
                        onSuffixTap: (value) {
                          if (value.isNotEmpty) {
                            context.read<CommentCubit>().addComment(
                                  comment: value,
                                  packageId: widget.travelPackageModel.uuid,
                                );
                            commenTController.clear();
                          }
                        },
                        controller: commenTController,
                        hintText: 'Add Comment',
                      ),
                    ),
                    if (uuid != null)
                      BuildComments(
                        packageId: widget.travelPackageModel.uuid,
                      )
                    else
                      const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildWeather() {
    return BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
      if (state is WeatherLoading) {
        return const CircularProgressIndicator();
      }
      if (state is WeatherLoaded) {
        final weather = state.weatherData;
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              // color: Colors.red,
              border: Border.all(color: LightColor.grey, width: .3),
              borderRadius: const BorderRadius.all(Radius.circular(12)),),
          // height: 100,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Wind Speed ${weather.wind?.speed ?? 0} Miles/hour'),
              Text('${weather.weather?.first.description ?? ""}  '),
              Text(
                'Current Temperature ${(weather.main!.temp! - 273.15).ceil()} ℃',
              ),
              Text(
                'The maximum visibility is ${(weather.visibility ?? 0) / 1000} km',
              ),
              Text('Current Temperature ${weather.clouds?.all ?? ""} Kelvin'),
            ],
          ),
        );
      }
      return const Text('Error Fetching weather data');
    },);
  }

  /// Build Page
  Stack buildImagePage(
    BuildContext context,
  ) {
    return Stack(
      children: [
        Positioned(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _index = index;
                debugPrint(index.toString());
              });
            },
            itemCount: widget.travelPackageModel.images.length,
            itemBuilder: (context, index) {
              return CustomImageWidget(
                urlImage: widget.travelPackageModel.images[index],
              );
            },
          ),
        ),
        Positioned(
          left: context.width * .4,
          top: context.height * .37,
          child: Container(
            height: 18,
            margin: EdgeInsets.only(bottom: context.height * .14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  widget.travelPackageModel.images.length,
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
        ),
        Positioned(
          top: 40,
          left: 28,
          child: IosBackButton(
            showFill: true,
            onTap: () {
              context.pop();
            },
          ),
        ),
      ],
    );
  }
}
