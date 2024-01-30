import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/core/widgets/custom_textfield.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';
import 'package:t_admin/features/chat/presentation/cubit/chat/chat_cubit.dart';
import 'package:t_admin/features/chat/presentation/cubit/user/user_cubit.dart';
import 'package:t_admin/features/chat/presentation/widget/user_profile_button.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';
import 'package:t_admin/features/user/presentation/cubit/credential/auth_cubit.dart';

///
class AllUserScreen extends StatefulWidget {
  ///
  const AllUserScreen({super.key});

  @override
  State<AllUserScreen> createState() => _AllUserScreenState();
}

class _AllUserScreenState extends State<AllUserScreen>
    with AutomaticKeepAliveClientMixin {
  String? currentUid;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if (mounted) {
        currentUid = context.read<AuthCubit>().getCurrentId();
        await context.read<UserCubit>().getAllUser();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          right: context.width * .2,
          top: context.height * .05,
          bottom: context.height * .05,
          left: context.width * .1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Users',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              thickness: 1.2,
              color: LightColor.eclipse,
            ),
            Expanded(
              child: BlocBuilder<UserCubit, UserState>(
                builder: (context, state) {
                  if (state is UserLoaded) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.users.length,
                      itemBuilder: (context, index) {
                        return BuildUserWidget(
                          currentUid: currentUid ?? '',
                          userModel: state.users[index],
                        );
                      },
                    );
                  }
                  if (state is UserLoading) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  }
                  return const Center(child: Text('Some thing went wrong'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

/// User Widget
class BuildUserWidget extends StatelessWidget {
  ///
  const BuildUserWidget({
    required this.userModel,
    required this.currentUid,
    super.key,
  });

  /// User Model
  final UserModel userModel;

  /// Current User ID
  final String currentUid;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          ProfileIconWidget(
            selectedUser: userModel,
          ),
          HorizontalGap.s,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userModel.uname ?? ''),
              Text(
                userModel.email ?? '',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () async {
              await showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: LightColor.whiteSmoke,
                    title: const Text(
                      'Send Message',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: CustomTextField(
                      hintText: 'Enter Message',
                      suffixIcon: Icons.send,
                      onSuffixTap: (value) async {
                        if (value.isNotEmpty) {
                          context.read<ChatCubit>().sendMessage(
                                senderId: currentUid,
                                message: Message(
                                  senderId: currentUid,
                                  message: value,
                                  receiverId: userModel.uid,
                                ),
                                userModel: userModel,
                              );
                          context.showSnackBar(
                            message: 'Message Sent',
                            toastType: ToastType.success,
                          );
                          Navigator.pop(context);
                        }
                      },
                    ),
                  );
                },
              );
            },
            child: const Icon(
              Icons.menu,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
