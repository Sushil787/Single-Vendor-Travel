import 'package:flutter/material.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';

class PackageDetailDialog extends StatelessWidget {

  const PackageDetailDialog({
    required this.travelPackage,
    super.key,
  });
  final TravelPackageModel travelPackage;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
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
              Text(
                'Description: ${travelPackage.description}',
                style: const TextStyle(fontSize: 16),
              ),
              VerticalGap.s,
              Text(
                'Package Type: ${travelPackage.packageType}',
                style: const TextStyle(fontSize: 16),
              ),
              VerticalGap.s,
              Text(
                'Location: ${travelPackage.location}',
                style: const TextStyle(fontSize: 16),
              ),
              // Add more fields as needed
              VerticalGap.m,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
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
