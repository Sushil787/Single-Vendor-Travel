import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_image_widget.dart';
import 'package:t_client/features/home/presentation/widgets/discount_widget.dart';

/// Recently Added Package Widgets
class RecentlyAddedPackages extends StatelessWidget {
  ///
  const RecentlyAddedPackages({super.key});
  // TravelPackageModel travelPackageModel ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height * .36,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recently Added',
            style: context.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          VerticalGap.m,
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 11,
              itemBuilder: (BuildContext context, int index) {
                return Container(
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
                            urlImage:
                                'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHJhdmVsJTIwbmF0dXJlfGVufDB8fDB8fHww',
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  12,
                                ),
                                color: LightColor.grey,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite_outline_rounded,
                                    size: 20,
                                    color: LightColor.backColor,
                                  ),
                                  HorizontalGap.s,
                                  Text(
                                    '11',
                                    style: TextStyle(
                                      color: LightColor.backColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: DiscountWidget(),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              height: 50,
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0),
                                backgroundBlendMode: BlendMode.overlay,
                              ),
                              width: context.width * .38,
                              child: Text(
                                'Sajek Valley',
                                style: context.textTheme.bodyLarge?.copyWith(
                                  color: LightColor.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ],
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
