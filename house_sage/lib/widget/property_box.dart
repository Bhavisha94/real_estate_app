import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class PropertyBox extends StatelessWidget {
  final String text;
  const PropertyBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 45,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: ColorUtils.primary200),
            borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: textStyle.copyWith(color: ColorUtils.contentSecondary),
            ),
            SvgPicture.asset('assets/images/arrow_down.svg')
          ],
        ));
  }
}
