import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/verification.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/backwidget.dart';
import 'package:house_sage/widget/button.dart';

class CheckMail extends StatefulWidget {
  const CheckMail({super.key});

  @override
  State<CheckMail> createState() => _CheckMailState();
}

class _CheckMailState extends State<CheckMail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .025),
              const BackWidget(),
              const Spacer(),
              SvgPicture.asset('assets/images/mail.svg'),
              Text(
                'Check your email',
                style: textStyle.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 22),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .005),
              SizedBox(
                  width: 236,
                  child: Text(
                    'We’ve sent a password recover instructions to your email',
                    textAlign: TextAlign.center,
                    style: textStyle.copyWith(
                        color: ColorUtils.contentTertiary, fontSize: 13),
                  )),
              const Spacer(),
              Button(
                width: MediaQuery.of(context).size.width * .9,
                text: 'Confirm',
                onCallBack: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const Verification(
                                isNewPsw: false,
                              )));
                },
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .035),
            ],
          ),
        ),
      ),
    );
  }
}
