import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final Widget? prefix;
  final Widget? suffix;
  final bool obsecure;
  final TextInputType? keyboardType;
  const TextFieldWidget(
      {super.key,
      required this.hintText,
      this.prefix,
      this.suffix,
      required this.obsecure,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: textStyle.copyWith(color: ColorUtils.contentPrimary, fontSize: 14),
      obscureText: obsecure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          filled: true,
          isCollapsed: false,
          isDense: true,
          fillColor: ColorUtils.textfieldBg,
          // contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: ColorUtils.mainColor)),
          hintText: hintText,
          hintStyle: hineTextStyle,
          prefixIcon: prefix,
          suffixIconConstraints: const BoxConstraints(
            minWidth: 2,
            minHeight: 2,
          ),
          suffixIcon: suffix),
    );
  }
}
