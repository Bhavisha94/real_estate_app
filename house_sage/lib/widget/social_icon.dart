import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';

class SocialIcon extends StatelessWidget {
  final VoidCallback? onCallBack;
  final String icon;
  const SocialIcon({super.key, this.onCallBack, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: 88,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: ColorUtils.grayScale200)),
        child: Center(
          child: SvgPicture.asset('assets/images/$icon.svg'),
        ),
      ),
    );
  }
}
