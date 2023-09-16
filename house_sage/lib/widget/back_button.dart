import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            color: ColorUtils.contentSecondaryInvarse,
            borderRadius: BorderRadius.circular(1000)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: 24,
            height: 24,
            child: SvgPicture.asset(
              'assets/images/back.svg',
            ),
          ),
        ),
      ),
    );
  }
}
