import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/dashboard.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/backwidget.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/textfield.dart';
import 'package:house_sage/widget/title.dart';

class ResetPassword2 extends StatefulWidget {
  const ResetPassword2({super.key});

  @override
  State<ResetPassword2> createState() => _ResetPassword2State();
}

class _ResetPassword2State extends State<ResetPassword2> {
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
            Text(
              'Reset Password',
              textAlign: TextAlign.center,
              style: textStyle.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: ColorUtils.contentPrimary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Text(
              'Enter your new password. Remenber \nthis time!',
              textAlign: TextAlign.center,
              style: textStyle.copyWith(
                  fontSize: 15, color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            const TitleWidget(text: 'Password'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            TextFieldWidget(
              hintText: 'Enter Your Password',
              obsecure: true,
              prefix: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: SvgPicture.asset(
                  'assets/images/lock.svg',
                ),
              ),
              suffix: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: SvgPicture.asset('assets/images/hide.svg')),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            const TitleWidget(text: 'Confirm Password'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            TextFieldWidget(
              hintText: 'Enter Your Confirm Password',
              obsecure: true,
              prefix: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: SvgPicture.asset(
                  'assets/images/lock.svg',
                ),
              ),
              suffix: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: SvgPicture.asset('assets/images/hide.svg')),
            ),
            const Spacer(),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Reset Password',
              onCallBack: () {
                showSuccessDialog();
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .045),
          ],
        ),
      )),
    );
  }

  showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
          insetPadding: EdgeInsets.zero,
          child: Container(
            width: MediaQuery.of(context).size.width * .85,
            height: MediaQuery.of(context).size.height * .55,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .025),
                SvgPicture.asset('assets/images/success.svg'),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Text(
                  'New Password Set Successfully',
                  textAlign: TextAlign.center,
                  style: textStyle.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: ColorUtils.mainColor),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Text(
                  'Your password has been created.',
                  style: textStyle.copyWith(color: ColorUtils.contentPrimary),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .1),
                Button(
                  width: MediaQuery.of(context).size.width * .6,
                  text: 'Go to Home',
                  onCallBack: () {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()),
                        (route) => false);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
