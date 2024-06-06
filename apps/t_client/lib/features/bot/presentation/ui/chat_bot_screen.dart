// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:t_client/core/constants/route_constants.dart';
import 'package:t_client/core/enums/messsage_enum.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_textfield.dart';
import 'package:t_client/features/bot/chat_engine/chat_engine.dart';
import 'package:t_client/features/bot/model/chat_bot_model.dart';
import 'package:t_client/features/chat/data/model/message_model.dart';
import 'package:t_client/features/chat/presentation/widgets/message_widget.dart';

/// Chat BotScreen
class ChatBotScreen extends StatefulWidget {
  ///
  const ChatBotScreen({super.key});

  @override
  State<ChatBotScreen> createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final ScrollController _scrollController =
      ScrollController(); // Add ScrollController

  /// Chat Engine instance
  final ChatEngine _chatEngine = ChatEngine();
  @override
  void dispose() {
    _scrollController.dispose(); // Dispose ScrollController

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Travello Bot',
        ),
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => context.pop(),
          child: const Icon(
            Icons.arrow_back,
            color: LightColor.eclipse,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(26, 52, 50, 50),
            child: Text(
              'Bot',
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
            child: _chatEngine.chats.value.isEmpty
                ? const Center(
                    child: Text('Chat'),
                  )
                : ValueListenableBuilder<List<BotChatModel>>(
                    valueListenable: _chatEngine.chats,
                    builder: (context, value, child) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        _scrollController
                            .jumpTo(_scrollController.position.maxScrollExtent);
                      });
                      return ListView.builder(
                        itemCount: value.length,
                        controller: _scrollController,
                        itemBuilder: (context, index) {
                          final message = value[index];
                          return MessageWidget(
                            sender: message.sender == 'user'
                                ? MessageEnum.sender
                                : MessageEnum.receiver,
                            message: Message(
                              senderId: '',
                              receiverId: message.sender,
                              message: message.message,
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _chatEngine.keyword.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      _chatEngine.sendMessage(
                        context,
                        chatModel: BotChatModel(
                          sender: 'user',
                          message: _chatEngine.keyword[index],
                        ),
                      );
                      setState(() {
                      });
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: LightColor.eclipse,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      child: Text(
                        _chatEngine.keyword[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            child: CustomTextField(
              maxLine: 1,
              hintText: 'send message',
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  _chatEngine.sendMessage(
                    context,
                    chatModel: BotChatModel(
                      sender: 'user',
                      message: value,
                    ),
                  );
                }
              },
              onSuffixTap: (value) {
                if (value.isNotEmpty) {
                  _chatEngine.sendMessage(
                    context,
                    chatModel: BotChatModel(
                      sender: 'user',
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
