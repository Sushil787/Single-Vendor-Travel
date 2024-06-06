import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/widgets/custom_lable.dart';
import 'package:t_admin/features/package/presentation/bloc/travel_bloc.dart';
import 'package:t_admin/features/package/presentation/widgets/package_widget.dart';

///
class PackageScreen extends StatefulWidget {
  ///
  const PackageScreen({super.key});

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  @override
  void initState() {
    super.initState();
    context.read<TravelBloc>().add(const Get());
  }

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
            Flexible(
              child: BlocBuilder<TravelBloc, TravelPackageState>(
                builder: (context, state) {
                  if (state is Loading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is TravelPackageLoaded) {
                    return GridView.builder(
                      shrinkWrap: true,
                      itemCount: state.packages.length,
                      itemBuilder: (context, index) {
                        return PackageWidget(
                          travelPackageModel: state.packages[index],
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 150,
                        crossAxisSpacing: 8,
                        crossAxisCount: 2,
                      ),
                    );
                  }
                  if (state is TravelPackageError) {
                    return Center(
                      child: Text(state.message),
                    );
                  }
                  return const Center(
                    child: Text('Error fetching data try later'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Add Package'),
        onPressed: () {
          context.push('/${AppRoutes.package}/${AppRoutes.addPackage}/true');
        },
        icon: const Icon(Icons.add),
      ),
    );
  }
}
