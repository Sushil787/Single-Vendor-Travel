import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_image_widget.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/discount_widget.dart';

/// Recently Added Package Widgets
class RecentlyAddedPackages extends StatelessWidget {
  ///
  const RecentlyAddedPackages({
    required this.travelPackageModels,
    required this.title,
    super.key,
  });

  /// title
  final String title;

  /// Travel Package Model
  final List<TravelPackageModel> travelPackageModels;
  // TravelPackageModel travelPackageModel ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .36,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textTheme.bodyMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          VerticalGap.s,
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: travelPackageModels.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    context.push(
                      AppRoutes.packageDetail,
                      extra: travelPackageModels[index],
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        height: double.infinity,
                        width: context.width * .38,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            CustomImageWidget(
                              urlImage: travelPackageModels[index].images.first,
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                  color: LightColor.grey,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.favorite_outline_rounded,
                                      size: 20,
                                      color: LightColor.backColor,
                                    ),
                                    HorizontalGap.s,
                                    Text(
                                      travelPackageModels[index]
                                          .favourite
                                          .toString(),
                                      style: const TextStyle(
                                        color: LightColor.backColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: DiscountWidget(
                                discount: travelPackageModels[index].discount,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                height: 38,
                                padding: const EdgeInsets.only(left: 10),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  backgroundBlendMode: BlendMode.overlay,
                                ),
                                width: context.width * .38,
                                child: Center(
                                  child: Text(
                                    travelPackageModels[index].location,
                                    maxLines: 1,
                                    style:
                                        context.textTheme.bodyLarge?.copyWith(
                                      color: LightColor.primaryColor,
                                      fontSize: 14,
                                      // fontSize:
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
