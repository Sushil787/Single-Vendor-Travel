import 'package:flutter/material.dart';
import 'package:t_admin/core/theme/app_colors.dart';

/// Custon Text Field
class CustomTextField extends StatefulWidget {
  /// Constructor
  CustomTextField({
    required this.hintText,
    this.onChanged,
    this.prefixIcon,
    this.validator,
    this.isPassword = false,
    super.key, // Use "Key? key" instead of "super.key"
    this.suffixIcon,
    this.maxLine,
    this.onSuffixTap,
    this.validationMessage,
    TextEditingController? controller, // Change the default value
  }) : controller = controller ?? TextEditingController();

  /// Hint text
  final String hintText;

  final String? validationMessage;

  /// Max line
  final int? maxLine;

  /// Hint text
  final String? Function(String?)? validator;

  /// Is Pasword Field
  final bool isPassword;

  /// Icon Data
  final IconData? prefixIcon;

  /// on Suffix Tap
  final void Function(String)? onSuffixTap;

  /// Function(String) callback
  final void Function(String)? onChanged;

  /// Suffix Icon
  final IconData? suffixIcon;

  /// TextEditing controller for [TextFormField]
  final TextEditingController controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return widget.validationMessage ?? 'please ${widget.hintText}';
            }
            return null;
          },
      onChanged: (newValue) {
        widget.onChanged?.call(newValue);
      },
      style: const TextStyle(
        fontSize: 15,
        color: Colors.black,
      ),
      textInputAction: TextInputAction.next,
      cursorColor: LightColor.eclipse,
      cursorHeight: 20,
      maxLines: widget.maxLine,
      obscureText: widget.isPassword && !isVisible,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(top: 3, left: 4),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: isVisible
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              )
            : widget.onSuffixTap != null
                ? InkWell(
                    onTap: () {
                      widget.onSuffixTap?.call(widget.controller.text);
                      widget.controller.clear();
                    },
                    child: Icon(widget.suffixIcon),
                  )
                : null,
        prefixIcon: widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: const OutlineInputBorder(),
        filled: true,
        fillColor: const Color.fromARGB(31, 74, 68, 68),
        hintText: widget.hintText,
      ),
    );
  }
}
