import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_admin/core/enums/message_enum.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/core/widgets/custom_textfield.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';

import 'package:t_admin/features/chat/presentation/cubit/chat/chat_cubit.dart';
import 'package:t_admin/features/chat/presentation/cubit/message/message_cubit.dart';
import 'package:t_admin/features/chat/presentation/widget/message_widget.dart';
import 'package:t_admin/features/chat/presentation/widget/user_profile_button.dart';
import 'package:t_admin/features/user/data/model/user_model.dart';
import 'package:t_admin/features/user/presentation/cubit/credential/auth_cubit.dart';

///
class ChatScreen extends StatefulWidget {
  ///
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late UserModel selectedUser;
  String? currentUid;

  @override
  void initState() {
    super.initState();
    context.read<ChatCubit>().getAllLatestChats();
    currentUid = context.read<AuthCubit>().getCurrentId();
    selectedUser = context.read<ChatCubit>().selectedUserModel;
    context.read<ChatCubit>().selectedUserStream.listen((userModel) {
      selectedUser = userModel;
      context
          .read<MessageCubit>()
          .getMessages(senderID: currentUid, receiverID: selectedUser.uid);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatCubitState>(
      builder: (context, state) {
        if (state is AllUserChatLoaded) {
          return Scaffold(
            body: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(color: LightColor.lightGrey),
                    ),
                  ),
                  width: context.width * .17,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: state.messages.length,
                    itemBuilder: (context, index) {
                      return ProfileWidgetButton(
                        latestMessageUser: state.messages[index],
                        isSelected: selectedUser.uid ==
                            state.messages[index].userModel!.uid,
                        onTap: () async {
                          debugPrint(selectedUser.uid);
                          setState(() {
                            context
                                .read<ChatCubit>()
                                .selectUser(state.messages[index].userModel!);
                            selectedUser = state.messages[index].userModel!;
                          });
                          debugPrint(selectedUser.email);
                        },
                        userModel: state.messages[index].userModel!,
                        senderId: currentUid,
                        receiverId: state.messages[index].userModel!.uid,
                      );
                    },
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  if (selectedUser.uid != null)
                                    ProfileIconWidget(
                                      selectedUser: selectedUser,
                                    )
                                  else
                                    const SizedBox.shrink(),
                                  HorizontalGap.m,
                                  Text(selectedUser.uname ?? ''),
                                ],
                              ),
                            ),
                            if (selectedUser.uid != null) const Divider(),
                            if (selectedUser.uid == null)
                              const Center(
                                child: Text('No User Selected'),
                              )
                            else
                              Expanded(
                                child: SizedBox(
                                  child:
                                      BlocBuilder<MessageCubit, MessageState>(
                                    builder: (context, state) {
                                      debugPrint(state.toString());
                                      if (state is MessageInitial) {
                                        return const Center(
                                          child: Text('No User Selected'),
                                        );
                                      }
                                      if (state is MessageLoadingState) {
                                        return const SizedBox(
                                          child: Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        );
                                      }
                                      if (state is MessageLoadedState) {
                                        return ListView.builder(
                                          itemCount: state.messages.length,
                                          reverse: true,
                                          itemBuilder: (context, index) {
                                            final message =
                                                state.messages[index];
                                            return MessageWidget(
                                              sender:
                                                  currentUid == message.senderId
                                                      ? MessageEnum.sender
                                                      : MessageEnum.receiver,
                                              message: Message(
                                                senderId: message.senderId,
                                                receiverId: message.receiverId,
                                                timestamp: message.timestamp,
                                                message: message.message,
                                              ),
                                            );
                                          },
                                        );
                                      }
                                      return const SizedBox.shrink();
                                    },
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      if (selectedUser.uid != null)
                        Container(
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 6,
                          ),
                          child: CustomTextField(
                            hintText: 'send message......',
                            onChanged: (value) {},
                            suffixIcon: Icons.send,
                            onSuffixTap: (value) {
                              if (value.isNotEmpty) {
                                context.read<ChatCubit>().sendMessage(
                                      userModel: selectedUser,
                                      senderId: currentUid!,
                                      message: Message(
                                        message: value,
                                        senderId: currentUid,
                                        receiverId: selectedUser.uid,
                                      ),
                                    );
                              }
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (state is ChatLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Center(
            child: Text((state as ChatErrorState).message),
          );
        }
      },
    );
  }
}
