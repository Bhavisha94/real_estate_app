import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/back_button.dart';

class AppBarWidget {
  static backArrowAppBar(
      {required String title,
      required BuildContext context,
      List<Widget>? actions}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.all(7.0),
        child: BackButtonWidget(),
      ),
      title: Text(
        title,
        style: textStyle.copyWith(
            fontSize: 16,
            color: ColorUtils.contentPrimary,
            fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      actions: actions,
    );
  }

  static appBar(
      {required String title,
      required BuildContext context,
      List<Widget>? actions}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title,
        style: textStyle.copyWith(
            fontSize: 16,
            color: ColorUtils.contentPrimary,
            fontWeight: FontWeight.w600),
      ),
      centerTitle: true,
      actions: actions,
    );
  }
}
