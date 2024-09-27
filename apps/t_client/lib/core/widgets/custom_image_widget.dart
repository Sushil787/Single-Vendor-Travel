import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
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
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: const Color.fromARGB(255, 249, 235, 235),
        highlightColor: const Color.fromARGB(255, 228, 228, 228),
        child: Container(
          color: Colors.white,
        ),
      ),
      errorWidget: (context, url, error) => Image.asset(
        MediaAsset.loadingImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
