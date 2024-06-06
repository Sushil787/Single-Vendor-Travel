import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';
import 'package:t_client/core/widgets/custom_image_widget.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/discount_widget.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/package_metainfo_widget.dart';

/// Package Widget
class PackageWidget extends StatelessWidget {
  ///
  PackageWidget(
      {required this.travelPackageModel,
      super.key,
      this.isMapScreen = false,
      this.onTap,
      this.distance = 0});

  /// [TravelPackageModel] for Package Widget
  final TravelPackageModel travelPackageModel;

  /// Is map screen
  bool isMapScreen;

  /// Void Call Back
  VoidCallback? onTap;

  /// Distance
  double? distance;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 160,
      width: context.width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (isMapScreen)
                  SizedBox(
                    height: 30,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: LightColor.eclipse,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          child: Text(
                            '${distance?.toStringAsPrecision(5)} km',
                            style: context.textTheme.labelSmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        HorizontalGap.s,
                        InkWell(
                          onTap: onTap,
                          child: Container(
                            decoration: BoxDecoration(
                              color: LightColor.eclipse,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 4,
                            ),
                            child: Text(
                              'View on map',
                              style: context.textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                VerticalGap.xxs,
                InkWell(
                  onTap: () {
                    context.push(
                      AppRoutes.packageDetail,
                      extra: travelPackageModel,
                    );
                  },
                  child: Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: LightColor.backGroundColor,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: LightColor.whiteSmokeLight,
                        width: 0.5,
                      ),
                    ),
                    height: 115,
                    width: context.width - 60,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      width: context.width * .56,
                      child: PackageMetaInfoWidget(
                        travelPackageModel: travelPackageModel,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: 128,
              width: context.width * .35,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CustomImageWidget(
                      urlImage: travelPackageModel.images.first,
                    ),
                    if (travelPackageModel.discount != 0)
                      Positioned(
                        top: 0,
                        left: 0,
                        child: DiscountWidget(
                          discount: travelPackageModel.discount,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
