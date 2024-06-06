import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:t_client/core/assets/media_assets.dart';

/// Custom Image Widget
class CustomImageWidget extends StatelessWidget {
  ///
  const CustomImageWidget({required this.urlImage, super.key});

  /// Image
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: urlImage,
      fit: BoxFit.cover,
      placeholder: (context, url) => Image.asset(
        MediaAsset.loadingImage,
        fit: BoxFit.cover,
      ),
      errorWidget: (context, url, error) => Image.asset(
        MediaAsset.loadingImage,
        fit: BoxFit.cover,
      ),
    );
    //   return Image.network(
    //     urlImage,
    //     fit: BoxFit.cover,
    //     loadingBuilder: (
    //       BuildContext context,
    //       Widget child,
    //       ImageChunkEvent? loadingProgress,
    //     ) {
    //       if (loadingProgress == null) {
    //         return child;
    //       } else {
    //         return Image.asset(
    //           MediaAsset.loadingImage,
    //           fit: BoxFit.cover,
    //         );
    //         // return Shimmer.fromColors(
    //         //   period: const Duration(
    //         //     seconds: 1,
    //         //   ),
    //         //   baseColor: LightColor.lightGrey,
    //         //   highlightColor: LightColor.whiteSmoke,
    //         //   child: Container(
    //         //     width: double.infinity,
    //         //     height: double.infinity,
    //         //     color: Colors.white,
    //         //   ),
    //         // );
    //       }
    //     },
    //     errorBuilder:
    //         (BuildContext context, Object error, StackTrace? stackTrace) {
    //       return Image.asset(
    //         MediaAsset.loadingImage,
    //         fit: BoxFit.cover,
    //       );
    //     },
    //   );
    // }
  }
}
