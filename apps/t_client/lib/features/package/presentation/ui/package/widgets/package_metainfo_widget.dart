import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/bookmark/presentation/bloc/bloc/bookmark_bloc.dart';
import 'package:t_client/features/package/data/model/travel_package_model.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/build_package_price.dart';
import 'package:t_client/features/package/presentation/ui/package/widgets/icon_text_row.dart';

///
class PackageMetaInfoWidget extends StatelessWidget {
  ///
  const PackageMetaInfoWidget({
    required this.travelPackageModel,
    super.key,
  });

  /// Travel Package Model
  final TravelPackageModel travelPackageModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: context.width * .7,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              travelPackageModel.packageName,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium,
            ),
          ),
          BuildIconTextRow(
            onTap: () {},
            first: const Icon(
              Icons.location_on,
              size: 18,
              color: LightColor.grey,
            ),
            text: travelPackageModel.location,
          ),
          const Divider(
            thickness: .2,
          ),
          Row(
            children: [
              BuildIconTextRow(
                onTap: () {
                  context
                      .read<BookmarkBloc>()
                      .addRemoveBookMarks(travelPackageModel);
                },
                first: const Icon(
                  Icons.favorite,
                  size: 18,
                  color: LightColor.orange,
                ),
                text: travelPackageModel.favourite.toString(),
              ),
              HorizontalGap.l,
              BuildIconTextRow(
                first: const Icon(
                  Icons.comment,
                  size: 18,
                  color: LightColor.orange,
                ),
                text: (travelPackageModel.reviews ?? []).length.toString(),
              ),
              const Spacer(),
              buildProductPrice(
                context,
                price: travelPackageModel.perHeadPerNight,
                discount: travelPackageModel.discount,
              )
              // Text(
              //   'रु ',
              //   style: context.textTheme.bodySmall
              //       ?.copyWith(color: LightColor.orange),
              // ),
              // Text(
              //   travelPackageModel.perHeadPerNight.toString(),
              //   style: context.textTheme.bodySmall?.copyWith(
              //     color: LightColor.eclipse,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
