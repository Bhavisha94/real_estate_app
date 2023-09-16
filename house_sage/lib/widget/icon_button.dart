import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';

class IconButtonWidget extends StatelessWidget {
  final String image;
  final VoidCallback? onTap;
  const IconButtonWidget({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: ColorUtils.contentSecondaryInvarse),
        child: Center(
          child: SvgPicture.asset('assets/images/$image.svg'),
        ),
      ),
    );
  }
}
