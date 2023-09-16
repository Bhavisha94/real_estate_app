import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/gradient_text.dart';

class DontAccountText extends StatelessWidget {
  final VoidCallback? onCallBack;
  const DontAccountText({super.key, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: textStyle.copyWith(
              color: ColorUtils.contentPrimary, fontSize: 14),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .02,
        ),
        InkWell(
          onTap: onCallBack,
          child: GradientText(
            'Sign up',
            style:
                textStyle.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
            gradient: LinearGradient(colors: [
              ColorUtils.gradient2,
              ColorUtils.gradient1,
            ]),
          ),
        ),
      ],
    );
  }
}
