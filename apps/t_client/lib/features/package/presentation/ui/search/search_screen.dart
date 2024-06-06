
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/bloc/travel_bloc/travel_bloc.dart';
import 'package:t_client/features/package/presentation/ui/package/package_screen.dart';


/// Frustrated By Firestore Full Text Search
/// Sed, it's require external package 

/// Search Screen
class SearchScreen extends StatefulWidget {
  ///
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ///
  final TextEditingController _controller = TextEditingController();

  ///
  List<TravelPackageModel> packages = [];

  /// Remote Packages
  List<TravelPackageModel> remotePackages = [];
  @override
  void initState() {
    super.initState();
    remotePackages = context.read<TravelBloc>().package;
    debugPrint(remotePackages.length.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 30),
          height: 50,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
              HorizontalGap.s,
              Expanded(
                child: CustomTextField(
                  controller: _controller,
                  hintText: 'Goa package',
                  onChanged: (value) {
                    packages.clear();
                    for (final element in remotePackages) {
                      if (element.packageName.contains(value) ||
                          element.description.contains(value)) {
                        packages.add(element);
                      }
                    }
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: Divider(
          thickness: .2,
        ),
      ),
      SliverToBoxAdapter(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _controller.text.isEmpty
                ? Container(
                    alignment: Alignment.center,
                    height: context.height * .7,
                    child: Text(
                      'Search Packages',
                      style: context.textTheme.headlineSmall,
                    ),
                  )
                : Packages(
                    packages: packages,
                  )

            // No Data Found
            ),
      ),
    ]));
  }
}
