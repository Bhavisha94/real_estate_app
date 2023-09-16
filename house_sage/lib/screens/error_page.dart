import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/button.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .3),
            SvgPicture.asset('assets/images/error.svg'),
            Text(
              'Error 404',
              style: textStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: ColorUtils.contentPrimary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'We are not online this time. Please try again later',
              style: textStyle.copyWith(color: ColorUtils.contentSecondary),
            ),
            const Spacer(),
            Button(
                width: MediaQuery.of(context).size.width * .9,
                text: 'Back to Home'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
          ],
        ),
      ),
    );
  }
}
