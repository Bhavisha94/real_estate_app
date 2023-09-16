// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  Widget? leading;
  String title;
  Widget? trailing;
  VoidCallback? onTap;
  TextStyle? textStyle;
  DrawerMenu(
      {super.key,
      this.leading,
      required this.title,
      this.trailing,
      this.onTap,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      horizontalTitleGap: 0,
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      title: Text(
        title,
        style: textStyle,
      ),
      trailing: trailing,
    );
  }
}
