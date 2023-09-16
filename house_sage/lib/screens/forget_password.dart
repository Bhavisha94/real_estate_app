import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/verification.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Forgot Password', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .03),
            SvgPicture.asset('assets/images/forget_psw.svg'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .03),
            Text(
              'To reset your password, please select contact details',
              style: textStyle.copyWith(
                  fontSize: 15, color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .03),
            option(
                context,
                0,
                'via Phone :',
                '+880***7763666',
                () => setState(() {
                      index = 0;
                    })),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            option(
                context,
                1,
                'via Email :',
                'info***ul@gmail.com',
                () => setState(() {
                      index = 1;
                    })),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .03),
            Button(
              width: MediaQuery.of(context).size.width,
              text: 'Continue',
              onCallBack: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Verification(
                            isNewPsw: true,
                          ))),
            )
          ],
        ),
      ),
    );
  }

  Widget option(BuildContext context, int idx, String title, String value,
      VoidCallback? onTap) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .081,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: index == idx
                      ? ColorUtils.mainColor
                      : Colors.transparent)),
          child: Row(
            children: [
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .03),
              Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: ColorUtils.primary50),
                child: SvgPicture.asset('assets/images/email.svg'),
              ),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: textStyle.copyWith(
                        fontSize: 13, color: ColorUtils.contentTertiary),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .005),
                  Text(
                    value,
                    style: textStyle.copyWith(
                        fontSize: 13, color: ColorUtils.contentSecondary),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
