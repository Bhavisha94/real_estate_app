import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class TitleWidget extends StatelessWidget {
  final String text;
  const TitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Text(
        text,
        style: textStyle.copyWith(
            color: ColorUtils.contentSecondary, fontWeight: FontWeight.w600),
      ),
    );
  }
}
