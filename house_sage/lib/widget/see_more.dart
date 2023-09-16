import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'See More',
          style: textStyle.copyWith(
              color: ColorUtils.mainColor, fontWeight: FontWeight.w600),
        ),
        SizeUtils.horizontalSpacing(width: 5),
        Icon(
          Icons.arrow_forward,
          size: 17,
          color: ColorUtils.mainColor,
        )
      ],
    );
  }
}
