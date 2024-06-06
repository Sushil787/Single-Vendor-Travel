// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/bookmark/presentation/bloc/bloc/bookmark_bloc.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/package_widget.dart';


// Bookmark Screen
class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  State<BookMarkScreen> createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  @override
  void initState() {
    super.initState();
    context.read<BookmarkBloc>().getBookMarks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          'Bookmarks',
          style: context.textTheme.headlineLarge?.copyWith(
            fontSize: 26,
            color: LightColor.textColor,
            fontWeight: FontWeight.w800,
            height: 1,
          ),
        ),
      ),
      body: BlocBuilder<BookmarkBloc, BookmarkState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (state is Loaded) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: state.bookmarks.isEmpty
                  ? Center(
                      child: Text(
                        'Add Some Favourite Package',
                        style: context.textTheme.headlineSmall,
                      ),
                    )
                  : ListView.builder(
                      itemCount: state.bookmarks.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return PackageWidget(
                          travelPackageModel: state.bookmarks[index],
                        );
                      },
                    ),
            );
          }
          return Text(
            'Error Loading Data',
            style: context.textTheme.headlineSmall,
          );
        },
      ),
    );
  }
}
