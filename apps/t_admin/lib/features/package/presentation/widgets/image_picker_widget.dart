import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'package:t_admin/core/theme/app_colors.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({
    required this.imageCallBack,
    super.key,
  });

  final void Function(Uint8List?) imageCallBack;

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  Uint8List? packageImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        InkWell(
          onTap: () async {
            final image = await FilePicker.platform.pickFiles();
            if (image != null) {
              widget.imageCallBack(image.files.single.bytes);
              packageImage = image.files.single.bytes;
              setState(() {});
            }
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: packageImage != null
                  ? DecorationImage(
                      image: MemoryImage(
                        packageImage!,
                      ),
                      fit: BoxFit.fill,
                    )
                  : null,
              border: Border.all(
                color: LightColor.eclipse,
                width: 2,
              ),
              color: LightColor.whiteSmoke,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 110,
            width: 200,
            child: const Icon(
              Icons.add,
              color: LightColor.eclipse,
              size: 32,
            ),
          ),
        ),
        if (packageImage != null)
          Positioned(
            right: -4,
            top: -4,
            child: IconButton(
              onPressed: () {
                packageImage = null;
                widget.imageCallBack(null);
                setState(
                  () {},
                );
              },
              icon: const Icon(
                Icons.cancel,
                color: Colors.red,
              ),
            ),
          )
      ],
    );
  }
}
