import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/back_button.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const BackButtonWidget(),
        Text(
          'Need Help?',
          style: textStyle.copyWith(
              color: ColorUtils.mainColor,
              decoration: TextDecoration.underline),
        )
      ],
    );
  }
}
