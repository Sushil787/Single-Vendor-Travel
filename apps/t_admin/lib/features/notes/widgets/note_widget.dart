import 'package:flutter/material.dart';
import 'package:t_admin/core/assets/media_assets.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/features/notes/data/model/notes_model.dart';

/// Note Widget
class NoteWidget extends StatelessWidget {
  /// Constructor
  const NoteWidget({
    required this.note,
    required this.callback,
    super.key,
  });

  /// Note Model instance
  final NoteModel note;

  /// Call Back Function
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: LightColor.backColor,

          // color: note.title!.length < 8
          //     ? Colors.blue.shade200
          //     : note.title!.length < 12
          //         ? Colors.green.shade200
          //         : note.title!.length < 19
          //             ? Colors.red.shade200
          //             : Colors.deepOrange.shade400,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalGap.xxs,
            if (note.imageUrl != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FadeInImage.assetNetwork(
                  placeholder: MediaAsset.placeHolder,
                  image: note.imageUrl!,
                ),
              )
            else
              const SizedBox.shrink(),
            VerticalGap.s,
            Text(
              note.title!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            VerticalGap.s,
            Flexible(
              child: Text(
                note.body!,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodySmall!.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
