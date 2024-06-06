import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/bookmark/presentation/bloc/bloc/bookmark_bloc.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/icon_text_row.dart';

///
class BuildAddFavouriteWidget extends StatelessWidget {
  ///
  const BuildAddFavouriteWidget({
    required this.travelPackageModel,
    super.key,
  });

  ///
  final TravelPackageModel travelPackageModel;

  @override
  Widget build(BuildContext context) {
    return BuildIconTextRow(
      onTap: () {
        context.read<BookmarkBloc>().addRemoveBookMarks(travelPackageModel);
      },
      first: BlocBuilder<BookmarkBloc, BookmarkState>(
        builder: (context, state) {
          if (state is Loaded) {
            final favourite = state.bookmarks.contains(travelPackageModel);
            return favourite
                ? const Icon(
                    Icons.favorite,
                    size: 24,
                    color: LightColor.orange,
                  )
                : const Icon(
                    Icons.favorite_outline_outlined,
                    size: 24,
                    color: LightColor.orange,
                  );
          }
          return const Icon(
            Icons.favorite_outline_outlined,
            size: 24,
            color: LightColor.orange,
          );
        },
      ),
    );
  }
}
