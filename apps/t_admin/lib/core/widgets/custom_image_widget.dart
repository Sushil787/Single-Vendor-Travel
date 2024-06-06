import 'package:flutter/material.dart';

/// Custom Image Widget
class CustomImageWidget extends StatelessWidget {
  ///
  const CustomImageWidget({required this.urlImage, super.key});

  /// Image
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      urlImage,
      fit: BoxFit.cover,

      // ),
    );
  }
}
