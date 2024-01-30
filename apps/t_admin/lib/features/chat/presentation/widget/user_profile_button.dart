import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/features/chat/data/model/latest_message.dart';
import 'package:t_admin/features/chat/presentation/cubit/latest/latest_message_cubit.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';

///
class ProfileWidgetButton extends StatefulWidget {
  ///
  const ProfileWidgetButton({
    required this.onTap,
    required this.userModel,
    required this.isSelected,
    required this.senderId,
    required this.receiverId,
    required this.latestMessageUser,
    super.key,
  });

  /// Chat State
  final UserModel userModel;

  /// Latest Message
  final LatestMessageUser latestMessageUser;

  /// Is Selected
  final bool isSelected;

  /// Sender ID
  final String? senderId;

  /// receiver ID
  final String? receiverId;

  /// Void call back
  final VoidCallback onTap;

  /// latest message
  @override
  State<ProfileWidgetButton> createState() => _ProfileWidgetButtonState();
}

class _ProfileWidgetButtonState extends State<ProfileWidgetButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      color: widget.isSelected ? LightColor.lightGrey : Colors.white,
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 4,
          ),
          child: Row(
            children: [
              ClipOval(
                child: SizedBox(
                  height: 32,
                  width: 32,
                  child: widget.userModel.profileUrl != null &&
                          widget.userModel.profileUrl!.isNotEmpty
                      ? Image.network(widget.userModel.profileUrl!)
                      : ColoredBox(
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              widget.userModel.uname?[0] ?? '',
                              style: context.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                ),
              ),
              HorizontalGap.m,
              Expanded(
                child: SizedBox(
                  height: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                widget.userModel.uname ?? '',
                                style: context.textTheme.labelLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              DateFormat('yyyy-MM-dd HH:mm').format(
                                widget.latestMessageUser.timestamp!.toDate(),
                              ),
                              style: const TextStyle(
                                color: LightColor.eclipse,
                                fontSize: 9,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        widget.latestMessageUser.message!.message.toString(),
                        style: context.textTheme.labelLarge?.copyWith(
                          fontWeight: FontWeight.w100,
                          // fontSize: 7,
                          color: Colors.black,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Builds Profile Image Circle Avatar
class ProfileIconWidget extends StatelessWidget {
  ///
  const ProfileIconWidget({
    required this.selectedUser,
    super.key,
  });

  /// User Model
  final UserModel selectedUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: selectedUser.profileUrl != null
          ? CircleAvatar(
              radius: 20,
              backgroundColor: context.primary,
              backgroundImage: NetworkImage(
                selectedUser.profileUrl!,
              ),
            )
          : CircleAvatar(
              radius: 20,
              backgroundColor: context.primary,
              child: Text(
                selectedUser.uname?[0] ?? '',
                style: context.textTheme.headlineLarge,
              ),
            ),
    );
  }
}
