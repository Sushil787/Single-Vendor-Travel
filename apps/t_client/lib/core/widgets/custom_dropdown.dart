import 'package:flutter/material.dart';
import 'package:t_client/core/helper/extension/context_extension.dart';
import 'package:t_client/core/theme/app_colors.dart';

///
class CustomDropDownWidget extends StatefulWidget {
  ///
  const CustomDropDownWidget({
    required this.items,
    required this.onSelect,
    super.key,
  });

  ///
  final List<String> items;

  ///
  final void Function(String)? onSelect;

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  String dropdownValue = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 380,
      label: const Text('Enter pickup address'),
      textStyle: context.textTheme.headlineSmall?.copyWith(
        color: LightColor.grey,
      ),
      trailingIcon: const Icon(
        Icons.arrow_drop_down_circle,
        color: LightColor.eclipse,
      ),
      initialSelection: widget.items.first,
      onSelected: (String? value) {
        widget.onSelect!(value!);
        setState(() {
          dropdownValue = value;
        });
      },
      dropdownMenuEntries:
          widget.items.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(
          value: value,
          label: value,
        );
      }).toList(),
    );
  }
}
