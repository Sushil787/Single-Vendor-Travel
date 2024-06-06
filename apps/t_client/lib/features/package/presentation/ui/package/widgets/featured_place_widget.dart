import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/widgets/custom_image_widget.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/package_metainfo_widget.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

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
      onTap: () async {
        await context.read<UserRepository>().addSearchHistory(
              searchQuery: travelPackageModel.packageName,
            );
        context.push(
          AppRoutes.packageDetail,
          extra: travelPackageModel,
        );
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
