import 'package:flutter/material.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/features/home/presentation/widgets/icon_text_row.dart';
import 'package:t_client/features/home/presentation/widgets/package_metainfo_widget.dart';

/// Featured Place widget
class FeaturedPlaceWidget extends StatelessWidget {
  const FeaturedPlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tapped');
      },
      child: SizedBox(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SizedBox(
              height: context.height * .25,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://scontent.fktm17-1.fna.fbcdn.net/v/t31.18172-8/21457563_1749575985073115_316060654702449911_o.jpg?_nc_cat=107&ccb=1-7&_nc_sid=7f8c78&_nc_ohc=9chRtaHiZVAAX8zZKmX&_nc_ht=scontent.fktm17-1.fna&oh=00_AfBaRvuaSUEKCfq16BlPIfdmoLqnHEqvyPr3KNPrpALgQw&oe=65DBE1DF',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 30,
              right: 30,
              bottom: 0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                elevation: 1,
                child: PackageMetaInfoWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
