import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';

class ContactButton extends StatelessWidget {
  final String image;
  final String text;
  final double width;
  const ContactButton(
      {super.key,
      required this.image,
      required this.text,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 44,
      decoration: BoxDecoration(
          color: ColorUtils.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/$image.svg'),
          SizeUtils.horizontalSpacing(width: 12),
          Text(
            text,
            style: textStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorUtils.contentSecondary),
          )
        ],
      ),
    );
  }
}
