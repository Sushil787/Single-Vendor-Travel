import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:t_admin/core/constants/route_constants.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/core/widgets/custom_button.dart';
import 'package:t_admin/features/notes/cubit/note_cubit.dart';
import 'package:t_admin/features/notes/data/model/notes_model.dart';
import 'package:uuid/uuid.dart';

/// Note Screen
class NoteScreen extends StatefulWidget {
  ///
  const NoteScreen({this.note, this.createMode = false, super.key});

  /// edit mode
  final bool? createMode;

  /// NoteModel
  final NoteModel? note;

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  File? imagePath;
  bool? editMode;

  final TextEditingController titleEditingController = TextEditingController();
  final TextEditingController bodyEditingController = TextEditingController();
  final uuid = const Uuid();

  @override
  void initState() {
    super.initState();
    widget.note != null
        ? titleEditingController.text = widget.note!.title!
        : titleEditingController.text = '';
    widget.note != null
        ? bodyEditingController.text = widget.note!.body!
        : bodyEditingController.text = '';
    editMode = widget.createMode;
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // if (widget.createMode) editMode = false;
    return Scaffold(
      appBar: appBar(context),
      body: Container(
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
        child: SingleChildScrollView(
          child: BlocBuilder<NoteCubit, NoteState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'note title',
                    style: context.textTheme.bodyMedium,
                  ),
                  VerticalGap.xs,
                  formWidget(context),
                  VerticalGap.l,
                  if (editMode!) saveButton(state, context),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  /// Button
  CustomElevatedButton saveButton(NoteState state, BuildContext context) {
    return CustomElevatedButton(
      isLoading: state is NoteLoadingState,
      buttonText: 'Save',
      onButtonPressed: () async {
        if (formKey.currentState!.validate()) {
          if (widget.createMode! && imagePath != null) {
            await context.read<NoteCubit>().addNote(
                  note: NoteModel(
                    title: titleEditingController.text,
                    body: bodyEditingController.text,
                    id: uuid.v4(),
                    imageUrl: imagePath!.path,
                  ),
                );
            if (context.mounted) {
              context
                ..showSnackBar(
                  message: 'Note Added Successfully',
                  toastType: ToastType.success,
                )
                ..pop();
            }
          } else {
            await context.read<NoteCubit>().updateNote(
                  note: widget.note!.copyWith(
                    title: titleEditingController.text,
                    body: bodyEditingController.text,
                  ),
                );
            if (context.mounted) {
              context
                ..showSnackBar(
                  message: 'Note Updated Successfully',
                  toastType: ToastType.success,
                )
                ..pop();
            }
          }
        }
      },
    );
  }

  /// Form
  Form formWidget(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: titleEditingController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'No Empty Title Allowed';
              }
              return null;
            },
            keyboardType: TextInputType.multiline,
            readOnly: !editMode!,
          ),
          VerticalGap.l,
          if (imagePath != null)
            SizedBox(
              height: context.height * .3,
              child: FutureBuilder<Uint8List>(
                future: imagePath!.readAsBytes(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done &&
                      snapshot.hasData) {
                    return Image.memory(snapshot.data!);
                  } else {
                    return const CircularProgressIndicator(); // or any loading indicator
                  }
                },
              ),
            )
          else
            const SizedBox.shrink(),
          VerticalGap.l,
          if (widget.note?.imageUrl == null)
            CustomElevatedButton(
              onButtonPressed: () async {
                await bottomSheet(context);
              },
              buttonText: 'Upload Image',
            )
          else
            SizedBox(
              child: Image.network(
                widget.note!.imageUrl!,
              ),
            ),
          VerticalGap.l,
          const Text('note body'),
          VerticalGap.xs,
          TextFormField(
            controller: bodyEditingController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'No Empty body Allowed';
              }
              return null;
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
            ),
            keyboardType: TextInputType.multiline,
            maxLines: editMode! ? 16 : 20,
            readOnly: !editMode!,
          ),
        ],
      ),
    );
  }

  /// AppBar widget
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      title: Text(
        widget.note?.title != null ? widget.note!.title! : 'note',
        style: context.textTheme.headlineMedium,
      ),
      leading: GestureDetector(
        onTap: () {
          context.go(AppRoutes.home);
        },
        child: const Icon(Icons.arrow_back),
      ),
      actions: [
        if (!widget.createMode!) ...[
          editButton(),
          HorizontalGap.l,
          GestureDetector(
            onTap: () async {
              await context.read<NoteCubit>().deleteNotes(id: widget.note!.id!);
              context
                ..showSnackBar(
                  message: 'Note Deleted Successfully',
                  toastType: ToastType.success,
                )
                ..pop();
            },
            child: const Icon(
              Icons.delete,
              size: 28,
              color: LightColor.eclipse,
            ),
          ),
        ],
        HorizontalGap.l,
      ],
    );
  }

  GestureDetector editButton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          editMode = !editMode!;
        });
      },
      child: Container(
        height: 32,
        width: 36,
        decoration: BoxDecoration(
          color: editMode! ? LightColor.grey : Colors.transparent,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: const Icon(
          Icons.edit_note_rounded,
          size: 30,
        ),
      ),
    );
  }

  /// BottomSheet
  Future<void> bottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      backgroundColor: context.primary,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          height: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Divider(
                indent: context.width * .3,
                endIndent: context.width * .3,
                color: LightColor.grey,
              ),
              CustomElevatedButton(
                onButtonPressed: () async {
                  // final picker = ImagePicker();
                  // final image = await picker.pickImage(
                  //   source: ImageSource.gallery,
                  // );
                  setState(() {
                    // imagePath = image;
                  });
                  if (context.mounted) {
                    context.pop();
                  }
                },
                buttonText: 'from gallery',
              ),
              CustomElevatedButton(
                onButtonPressed: () {
                  // final picker = FileP();
                  // final image = await picker.pickImage(
                  //   source: ImageSource.camera,
                  // );
                  setState(() {
                    // imagePath = image;
                  });
                  if (context.mounted) {
                    context.pop();
                  }
                },
                buttonText: 'from camera',
              ),
            ],
          ),
        );
      },
    );
  }
}
