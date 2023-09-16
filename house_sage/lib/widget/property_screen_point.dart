import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';

class PropertyPointWidget extends StatelessWidget {
  const PropertyPointWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: ColorUtils.white.withOpacity(.4)),
      child: Center(
        child: Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: ColorUtils.mainColor),
        ),
      ),
    );
  }
}
