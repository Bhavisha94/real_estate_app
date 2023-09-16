import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class SocialButton extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback? onCallBack;
  const SocialButton(
      {super.key, required this.icon, required this.text, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        //height: 58,
        height: MediaQuery.of(context).size.height * .06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: ColorUtils.grayScale200)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/$icon.svg'),
            SizedBox(
              width: MediaQuery.of(context).size.width * .03,
            ),
            Text(
              'Continue with $text',
              style: textStyle.copyWith(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
