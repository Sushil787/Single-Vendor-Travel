// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/core/constants/firebase_collections.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/package/data/model/comment_model.dart';
import 'package:t_client/features/package/presentation/bloc/comment/comment_cubit.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

/// User Comment Widget
class CommentWidget extends StatefulWidget {
  ///
  const CommentWidget({
    required this.commentModel,
    super.key,
  });

  /// User Comment Model
  final CommentModel commentModel;

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  String? currentUid;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      currentUid = await context.read<UserRepository>().getCurrentUId();
    });
  }

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: LightColor.grey,
            width: 0.3,
          ),
        ),
        leading: widget.commentModel.profileUrl != null
            ? CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                  widget.commentModel.profileUrl!,
                ),
              )
            : CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 40,
                child: Center(
                  child: Text(
                    widget.commentModel.uname.characters.first,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
        title: Text(widget.commentModel.uname),
        subtitle: Text(widget.commentModel.comment),
        trailing: currentUid == widget.commentModel.uuid
            ? PopupMenuButton<int>(
                onSelected: (item) {},
                itemBuilder: (context) => [
                  PopupMenuItem<int>(
                    value: 0,
                    child: const Text('delete'),
                    onTap: () {
                      context.read<CommentCubit>().deleteComment(
                            commentId: widget.commentModel.commentId,
                            packageId: widget.commentModel.packageId,
                          );
                    },
                  ),
                  PopupMenuItem<int>(
                      value: 1,
                      child: const Text('update'),
                      onTap: () async {
                        await showDialog<void>(
                          context: context,
                          builder: (BuildContext context) {
                            controller.text = widget.commentModel.comment;
                            return AlertDialog(
                              backgroundColor: LightColor.whiteSmoke,
                              title: const Text(
                                'Update Comment',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              content: CustomTextField(
                                controller: controller,
                                hintText: 'Add Comment',
                                suffixIcon: Icons.send,
                                onSuffixTap: (value) async {
                                  if (value.isNotEmpty) {
                                    await context
                                        .read<CommentCubit>()
                                        .updateComment(
                                          commentId:
                                              widget.commentModel.commentId,
                                          message: value,
                                          packageId:
                                              widget.commentModel.packageId,
                                        );
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                            );
                          },
                        );
                      }),
                ],
              )
            : null,
      ),
    );
  }
}
