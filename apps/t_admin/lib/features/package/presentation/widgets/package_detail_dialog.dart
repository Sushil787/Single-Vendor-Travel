import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/widgets/custom_button.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';
import 'package:t_admin/features/package/presentation/widgets/build_package_price.dart';
import 'package:t_admin/features/package/presentation/widgets/inclusive_exclusive_widget.dart';

class PackageDetailDialog extends StatelessWidget {
  PackageDetailDialog({
    required this.travelPackage,
    super.key,
  });
  final TravelPackageModel travelPackage;

  List<String> images = <String>[];

  @override
  Widget build(BuildContext context) {
    images = [
      ...travelPackage.images,
      travelPackage.featuredImage,
      travelPackage.vrImage,
    ];
    return Dialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                travelPackage.packageName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              VerticalGap.s,
              Row(
                children: [
                  const Text(
                    'Price: ',
                    style: TextStyle(fontSize: 12),
                  ),
                  buildProductPrice(
                    context,
                    price: travelPackage.perHeadPerNight,
                    discount: travelPackage.discount,
                  ),
                ],
              ),
              Text(
                'Description: ${travelPackage.description}',
                style: const TextStyle(fontSize: 12),
              ),
              VerticalGap.s,
              Text(
                'Package Type: ${travelPackage.packageType}',
                style: const TextStyle(fontSize: 12),
              ),
              VerticalGap.s,
              Text(
                'Location: ${travelPackage.location}',
                style: const TextStyle(fontSize: 12),
              ),
              VerticalGap.s,
              if (travelPackage.pickupAddress.isNotEmpty)
                Text(
                  'Pickup address: ${travelPackage.pickupAddress.join(', ')}',
                  style: const TextStyle(fontSize: 12),
                )
              else
                const SizedBox.shrink(),
              VerticalGap.s,
              BuildInclusiveExclusive(
                title: 'Inclusive',
                items: travelPackage.inclusive,
              ),
              BuildInclusiveExclusive(
                title: 'Highlights',
                items: travelPackage.highlights,
              ),
              VerticalGap.s,
              const Text(
                'Images:',
                style: TextStyle(fontSize: 12),
              ),
              Row(
                children: [
                  ...images.map(
                    (e) => Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 132,
                      height: 132, // Adjust the width as needed
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.network(
                          e,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              VerticalGap.m,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomElevatedButton(
                    onButtonPressed: () {
                      Navigator.of(context).pop();
                    },
                    buttonText: 'Close',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Usage:
void showPackageDetailDialog(BuildContext context, TravelPackageModel package) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return PackageDetailDialog(travelPackage: package);
    },
  );
}
