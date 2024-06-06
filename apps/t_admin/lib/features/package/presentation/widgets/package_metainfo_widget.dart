import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/features/package/data/model/travel_package_model.dart';
import 'package:t_admin/features/package/presentation/bloc/travel_bloc.dart';
import 'package:t_admin/features/package/presentation/widgets/build_package_price.dart';
import 'package:t_admin/features/package/presentation/widgets/icon_text_row.dart';

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    travelPackageModel.packageName,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          context.read<TravelBloc>().add(
                                Delete(
                                  id: travelPackageModel.uuid,
                                ),
                              );
                          context.showSnackBar(
                            message: 'Package deleted',
                            toastType: ToastType.success,
                          );
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.redAccent.shade200,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.push(
                            '/${AppRoutes.package}/${AppRoutes.addPackage}/false',
                            extra: travelPackageModel,

                          );
                        },
                        child: const Icon(
                          Icons.update,
                          color: LightColor.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          BuildIconTextRow(
            onTap: () {},
            first: const Icon(
              Icons.location_on,
              size: 18,
              color: LightColor.grey,
            ),
            text: Text(
              travelPackageModel.location,
              style: context.textTheme.bodySmall?.copyWith(
                fontSize: 14,
                color: LightColor.grey,
              ),
            ),
          ),
          const Divider(
            thickness: .2,
          ),
          Row(
            children: [
              BuildIconTextRow(
                onTap: () {},
                first: const Icon(
                  Icons.favorite,
                  size: 18,
                  color: LightColor.orange,
                ),
                text: Text(
                  travelPackageModel.favourite.toString(),
                  style: context.textTheme.bodySmall?.copyWith(
                    fontSize: 14,
                    color: LightColor.grey,
                  ),
                ),
              ),
              HorizontalGap.l,
              BuildIconTextRow(
                first: const Icon(
                  Icons.comment,
                  size: 18,
                  color: LightColor.orange,
                ),
                text: Text(
                  (travelPackageModel.reviews ?? []).length.toString(),
                  style: context.textTheme.bodySmall?.copyWith(
                    fontSize: 14,
                    color: LightColor.grey,
                  ),
                ),
              ),
              const Spacer(),
              buildProductPrice(
                context,
                price: travelPackageModel.perHeadPerNight,
                discount: travelPackageModel.discount,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
