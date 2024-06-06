import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/features/package/presentation/bloc/comment/comment_cubit.dart';
import 'package:t_client/features/package/presentation/ui/package/detail/widget/comment_widget.dart';

/// Comments List View
class BuildComments extends StatefulWidget {
  ///
  const BuildComments({
    required this.packageId,
    super.key, // Corrected super.key to Key? key
  }); // Added super(key: key);

  /// Package Id
  final String packageId;

  @override
  State<BuildComments> createState() => _BuildCommentsState();
}

class _BuildCommentsState extends State<BuildComments> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CommentCubit, CommentState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is CommentLoaded) {
          if (state.Comments.isNotEmpty) {
            // Check if comments list is not empty
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.Comments.length,
              itemBuilder: (context, index) {
                return CommentWidget(
                  commentModel: state.Comments[index],
                );
              },
            );
          } else {
            return const Center(
              child: Text('No comments'),
            );
          }
        }
        if (state is Loading) {
          return const Center(
            child: CircularProgressIndicator.adaptive(
              strokeWidth: 2.5,
            ),
          );
        }

        if (state is CommentError) {
          return const Center(
            child: Text('Something went wrong'),
          );
        }

        // Handle other states or fallback to a generic error message
        return const Center(
          child: Text('Something went wrong'),
        );
      },
    );
  }
}
