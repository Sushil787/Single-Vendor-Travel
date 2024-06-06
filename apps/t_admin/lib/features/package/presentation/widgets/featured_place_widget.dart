import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/widgets/custom_image_widget.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';
import 'package:t_admin/features/package/presentation/widgets/package_metainfo_widget.dart';

/// Featured Place widget
class FeaturedPlaceWidget extends StatelessWidget {
  ///
  const FeaturedPlaceWidget({
    required this.travelPackageModel,
    super.key,
  });

  /// Travel Package
  final TravelPackageModel travelPackageModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.push(
        //   AppRoutes.packageDetail,
        //   extra: travelPackageModel,
        // );
      },
      child: SizedBox(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: context.height * .25,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CustomImageWidget(
                  urlImage: travelPackageModel.vrImage,
                ),
              ),
            ),
            Positioned(
              left: 30,
              right: 30,
              bottom: 0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 1,
                child: PackageMetaInfoWidget(
                  travelPackageModel: travelPackageModel,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
