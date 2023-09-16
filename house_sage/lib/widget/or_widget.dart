import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/line.svg'),
        SizedBox(
          width: MediaQuery.of(context).size.width * .05,
        ),
        Text(
          'or',
          style: textStyle.copyWith(
              color: ColorUtils.contentSecondary, fontSize: 16),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .05,
        ),
        SvgPicture.asset('assets/images/line.svg'),
      ],
    );
  }
}
