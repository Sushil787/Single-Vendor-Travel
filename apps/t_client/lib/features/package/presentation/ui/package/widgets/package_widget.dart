import 'package:flutter/material.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_image_widget.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/discount_widget.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/package_metainfo_widget.dart';

/// Package Widget
class PackageWidget extends StatelessWidget {
  ///
  const PackageWidget({required this.travelPackageModel, super.key});

  /// [TravelPackageModel] for Package Widget
  final TravelPackageModel travelPackageModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// Context Go package detail screen
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 150,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
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
                        urlImage: travelPackageModel.featuredImage,
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
      ),
    );
  }
}
