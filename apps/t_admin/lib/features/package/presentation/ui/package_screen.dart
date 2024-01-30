import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/widgets/custom_lable.dart';
import 'package:t_admin/core/widgets/custom_textfield.dart';

///
class PackageScreen extends StatefulWidget {
  ///
  const PackageScreen({super.key});

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              child: CustomLable(
                lable: 'Packages',
              ),
            ),
            Container(
              height: 500,
              width: double.infinity,
              child: Column(
                children: [
                  CustomTextField(hintText: 'Enter Package Name'),
                  VerticalGap.l,
                  CustomTextField(hintText: 'Enter Location'),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Add Package'),
        onPressed: () {
          context.push('/${AppRoutes.package}/${AppRoutes.addPackage}');
        },
        icon: const Icon(Icons.add),
      ),
    );
  }
}
