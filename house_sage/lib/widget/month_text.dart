import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class Month extends StatelessWidget {
  const Month({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      ' /month',
      style:
          textStyle.copyWith(fontSize: 9, color: ColorUtils.contentSecondary),
    );
  }
}
