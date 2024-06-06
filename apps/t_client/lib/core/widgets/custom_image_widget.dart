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

  }
}
