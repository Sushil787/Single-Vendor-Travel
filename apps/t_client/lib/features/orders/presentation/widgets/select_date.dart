// ignore_for_file: public_member_api_docs

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/helper/gap.dart';
import 'package:t_client/core/theme/app_colors.dart';
import 'package:t_client/core/widgets/custom_button.dart';

/// Select Date Widget
class SelectedDateWidget extends StatefulWidget {
  ///
  SelectedDateWidget({
    required this.from,
    required this.to,
    required this.callBack,
    super.key,
  });

  String from;
  String to;
  int totalDays = 0;

  // ignore: inference_failure_on_function_return_type, public_member_api_docs
  Function(String, String, int) callBack;

  @override
  State<SelectedDateWidget> createState() => _SelectedDateWidgetState();
}

class _SelectedDateWidgetState extends State<SelectedDateWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('from:'),
            HorizontalGap.m,
            Card(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(widget.from),
              ),
            ),
            const Expanded(child: SizedBox.shrink()),
            const Text('to:'),
            HorizontalGap.m,
            Card(
              child: Container(
                padding: const EdgeInsets.all(8),
                child: Text(widget.to),
              ),
            ),
          ],
        ),
        VerticalGap.l,
        Container(
          child: CustomElevatedButton(
            btnFontSize: 16,
            onButtonPressed: () async {
              final dateTimeRange = await showDateRangePicker(
                context: context,
                firstDate: DateTime.now(),
                lastDate: DateTime(2025),
                builder: (context, child) {
                  return Theme(
                    data: context.theme.copyWith(
                      colorScheme: ColorScheme.fromSeed(
                        seedColor: LightColor.eclipse,
                      ),
                      appBarTheme: context.theme.appBarTheme.copyWith(
                        backgroundColor: LightColor.eclipse,
                      ),
                    ),
                    child: child!,
                  );
                },
              );
              if (dateTimeRange?.start != null) {
                widget
                  ..from = DateFormat('yyyy-MM-dd').format(dateTimeRange!.start)
                  ..to = DateFormat('yyyy-MM-dd').format(dateTimeRange.end);
                final totalDays =
                    dateTimeRange.end.difference(dateTimeRange.start).inDays;
                log(name: 'Selected Day', totalDays.toString());

                widget.callBack.call(widget.from, widget.to, totalDays);
              }
            },
            buttonText: 'Pick date',
          ),
        ),
      ],
    );
  }
}
