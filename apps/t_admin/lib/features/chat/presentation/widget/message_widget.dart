import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:t_admin/core/enums/message_enum.dart';
import 'package:t_admin/core/helper/extension/context_extension.dart';
import 'package:t_admin/core/helper/gap.dart';
import 'package:t_admin/core/theme/app_colors.dart';
import 'package:t_admin/features/chat/data/model/chat_model.dart';

/// Message Widget
class MessageWidget extends StatelessWidget {
  ///
  const MessageWidget({
    required this.message,
    this.sender = MessageEnum.sender,
    super.key,
  });

  ///
  final MessageEnum sender;

  ///
  final Message message;

  @override
  Widget build(BuildContext context) {
    final isSender = sender == MessageEnum.sender;
    return Container(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: SizedBox(
        width: context.width * .5,
        child: Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            HorizontalGap.m,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: isSender ? LightColor.eclipse : LightColor.primaryColor,
                borderRadius: isSender
                    ? const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      )
                    : const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
              ),
              child: Text(
                message.message ?? '',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color:
                      isSender ? LightColor.primaryColor : LightColor.eclipse,
                ),
              ),
            ),
            Text(
              DateFormat('yyyy-MM-dd HH:mm:ss')
                  .format(message.timestamp!.toDate()),
              style: const TextStyle(
                color: LightColor.eclipse,
                fontSize: 9,
              ),
            ),
            HorizontalGap.m,
          ],
        ),
      ),
    );
  }
}
