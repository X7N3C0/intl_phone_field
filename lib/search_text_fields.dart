import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController? textEditingController;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final Color bgColor;
  final bool isBorder;
  final bool isRead;
  final bool autofocus;

  const SearchTextField({
    Key? key,
    this.hintText,
    this.suffixIcon,
    this.textEditingController,
    this.onChanged,
    this.bgColor = Colors.transparent,
    this.isBorder = false,
    this.isRead = false,
    this.autofocus = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: isRead,
      autofocus: autofocus,
      onTap: onTap,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      onChanged: onChanged,
      controller: textEditingController,
      cursorColor: Colors.black,
      cursorWidth: 1,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),
        hintText: hintText ?? "",
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        prefixIcon: const Icon(
          Icons.search,
          size: 20,
          color: Colors.black,
        ),
        suffixIcon: suffixIcon,
        fillColor: bgColor,
        filled: true,
        focusedBorder: isBorder ? const OutlineInputBorder() : InputBorder.none,
        border: isBorder ? const OutlineInputBorder() : InputBorder.none,
        enabledBorder: isBorder ? const OutlineInputBorder() : InputBorder.none,
      ),
    );
  }
}
