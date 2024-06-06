import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';
import 'package:t_admin/features/package/presentation/widgets/package_detail_dialog.dart';
import 'package:t_admin/features/package/presentation/widgets/package_metainfo_widget.dart';

class PackageWidget extends StatelessWidget {
  const PackageWidget({required this.travelPackageModel, super.key});

  final TravelPackageModel travelPackageModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        showPackageDetailDialog(context, travelPackageModel);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: LightColor.whiteSmokeLight,
            width: 0.5,
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 132,
              height: 132, // Adjust the width as needed
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  travelPackageModel.images.first,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            HorizontalGap.s, // Add some spacing between the image and text
            Expanded(
              child: PackageMetaInfoWidget(
                travelPackageModel: travelPackageModel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// /// Package Widget
// class PackageWidget extends StatelessWidget {
//   ///
//   const PackageWidget({required this.travelPackageModel, super.key});

//   /// [TravelPackageModel] for Package Widget
//   final TravelPackageModel travelPackageModel;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // context.push(
//         // AppRoutes.packageDetail,
//         // extra: travelPackageModel,
//         // );
//       },
//       child: Container(
//         margin: const EdgeInsets.only(
//           bottom: 10,
//         ),
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         height: 150,
//         // width: context.width*.2,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(6),
//           border: Border.all(
//             color: LightColor.whiteSmokeLight,
//             width: 0.5,
//           ),
//         ),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               alignment: Alignment.centerLeft,
//               child: SizedBox(
//                 height: 128,
//                 width: 250,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(6),
//                   child: Stack(
//                     fit: StackFit.expand,
//                     children: [
//                       Image.network(
//                         travelPackageModel.featuredImage,
//                         fit: BoxFit.cover,
//                       ),
//                       if (travelPackageModel.discount != 0)
//                         Positioned(
//                           top: 0,
//                           left: 0,
//                           child: DiscountWidget(
//                             discount: travelPackageModel.discount,
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: context.width * .56,
//               child: PackageMetaInfoWidget(
//                 travelPackageModel: travelPackageModel,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
