import 'package:flutter/material.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/home/presentation/widgets/icon_text_row.dart';

///
class PackageMetaInfoWidget extends StatelessWidget {
  ///
  const PackageMetaInfoWidget({
    super.key,
  });

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
              'Somapura Mahavihara ',
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium,
            ),
          ),
          BuildIconTextRow(
            icon: const Icon(
              Icons.location_on,
              size: 18,
              color: LightColor.grey,
            ),
            text: 'Bhaktapur, Nepal',
          ),
          const Divider(
            thickness: .2,
          ),
          Row(
            children: [
              BuildIconTextRow(
                icon: const Icon(
                  Icons.favorite,
                  size: 18,
                  color: LightColor.orange,
                ),
                text: '11',
              ),
              HorizontalGap.l,
              BuildIconTextRow(
                icon: const Icon(
                  Icons.comment,
                  size: 18,
                  color: LightColor.orange,
                ),
                text: '4',
              ),
              const Spacer(),
              Text(
                'रु ',
                style: context.textTheme.bodySmall
                    ?.copyWith(color: LightColor.orange),
              ),
              Text(
                '477',
                style: context.textTheme.bodySmall?.copyWith(
                  color: LightColor.eclipse,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
