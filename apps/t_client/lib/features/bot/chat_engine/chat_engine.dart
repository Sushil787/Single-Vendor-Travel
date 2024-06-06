import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_client/features/bot/model/chat_bot_model.dart';
import 'package:t_client/features/package/presentation/bloc/travel_bloc/travel_bloc.dart';

/// Change Engine for chatting
class ChatEngine {
  ///
  factory ChatEngine() {
    return _singleton;
  }

  ChatEngine._internal();
  static final ChatEngine _singleton = ChatEngine._internal();

  /// Chats between user and bot

  ValueNotifier<List<BotChatModel>> chats =
      ValueNotifier<List<BotChatModel>>([]);

  /// Chat Keywords
  List<String> keyword = [
    'hi',
    'hello!!',
    'refund',
    'what kind of package you provide ?',
  ];

  /// Chat Response
  List<String> botResponse = [
    'Hello! How can I assist you today?',
    'Hi there! What brings you here?',
    "I'm good, thank you. How about you?",
    'Would you like information about our travel packages?',
    'These are the pacakge category we provide holiday, honeymoon,travel,religious,camping,adventure,beach',
    'If you cancel your order before 24 hours of the visit date, no refund is available. Cancel 48 hours before that 4% of the order cost will be deducted from your refund.',
  ];

  /// Send Message
  void sendMessage(BuildContext context, {required BotChatModel chatModel}) {
    chats.value.add(chatModel);
    final response = botResponse.firstWhere(
        (element) =>
            element.toLowerCase().contains(chatModel.message.toLowerCase()),
        orElse: () {
      if (chatModel.message == 'yes') {
        return context
            .read<TravelBloc>()
            .package
            .map((e) =>
                '${e.packageName} with ${e.perHeadPerNight} price perhead per night \n')
            .toList()
            .join();
      }
      if (chatModel.message.contains('hello!!')) {
        return 'hi there!! how are you?';
      }
      if (chatModel.message.contains('fine')) {
        return 'Okay!!';
      }
      return 'i didnot get your prompt be precise';
    });
    chats.value.add(BotChatModel(sender: 'botId', message: response));
    chats.notifyListeners();
  }
}
