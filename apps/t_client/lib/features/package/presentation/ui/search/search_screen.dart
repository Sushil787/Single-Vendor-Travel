import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/bloc/travel_bloc/travel_bloc.dart';
import 'package:t_client/features/package/presentation/ui/package/package_screen.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

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

  // Create a Timer variable
  Timer? _searchTimer;
  FocusNode focusNode = FocusNode();

  /// Remote Packages
  List<TravelPackageModel> remotePackages = [];
  @override
  void initState() {
    super.initState();
    remotePackages = context.read<TravelBloc>().package;
    debugPrint(remotePackages.length.toString());
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
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
                      focusNode: focusNode,
                      onChanged: (value) {
                        packages.clear();

                        for (final element in remotePackages) {
                          if (element.packageName
                              .toLowerCase()
                              .contains(value.toLowerCase())) {
                            packages.add(element);
                          }
                        }
                        _searchTimer?.cancel();
                        setState(() {});
                        // Start a new timer for 1 second (adjust the duration
                        //as needed)
                        _searchTimer =
                            Timer(const Duration(milliseconds: 1200), () {
                          // Execute this code block after 1 second of
                          // inactivity
                          if (value.length > 5) {
                            context.read<UserRepository>().addSearchHistory(
                                  searchQuery: value,
                                );
                          }
                        });
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
                    ),

              // No Data Found
            ),
          ),
        ],
      ),
    );
  }
}
