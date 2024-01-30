import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/enums/messsage_enum.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/chat/data/model/message_model.dart';
import 'package:t_client/features/chat/domain/chat_data_repo.dart';
import 'package:t_client/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:t_client/features/chat/presentation/widgets/message_widget.dart';
import 'package:t_client/features/user/data/model/user_model.dart';
import 'package:t_client/features/user/domain/repository/user_repository.dart';

///
class ChatScreen extends StatefulWidget {
  ///
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late String currentUid;
  late UserModel userModel;
  @override
  void initState() {
    super.initState();
    context.read<ChatCubit>().getMessages();
    currentUid = context.read<ChatDataRepository>().getCurrentUID();
    context
        .read<UserRepository>()
        .getSingleUser(uid: currentUid)
        .listen((event) {
      final user = event.first;
      userModel = UserModel(
        uid: user.uid,
        email: user.email,
        profileUrl: user.profileUrl,
        fcmToken: user.fcmToken,
        status: user.status,
        uname: user.uname,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Admin',
        ),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => context.pushReplacementNamed(
            AppRoutes.home,
            extra: currentUid,
          ),
          child: const Icon(
            Icons.arrow_back,
            color: LightColor.eclipse,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(26, 52, 50, 50),
            child: Text(
              'A',
              style: context.textTheme.bodyLarge,
            ),
          ),
          HorizontalGap.l,
        ],
      ),
      body: Column(
        children: [
          const Divider(
            height: 0.2,
            thickness: 0.5,
          ),
          Expanded(
            child: BlocBuilder<ChatCubit, ChatState>(
              builder: (context, state) {
                debugPrint(state.toString());
                if (state is ChatLoadingState) {
                  return const SizedBox(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (state is ChatLoadedState) {
                  return ListView.builder(
                    itemCount: state.messages.length,
                    reverse: true,
                    itemBuilder: (context, index) {
                      final message = state.messages[index];
                      return MessageWidget(
                        sender: currentUid == message.senderId
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            child: CustomTextField(
              hintText: 'send message',
              onChanged: (value) {},
              onSuffixTap: (value) {
                if (value.isNotEmpty) {
                  context.read<ChatCubit>().sendMessages(
                        userModel: userModel,
                        message: Message(
                          message: value,
                        ),
                      );
                }
              },
              suffixIcon: Icons.send,
            ),
          ),
        ],
      ),
    );
  }
}
