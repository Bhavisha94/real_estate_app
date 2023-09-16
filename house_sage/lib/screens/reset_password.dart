import 'package:flutter/material.dart';
import 'package:house_sage/screens/check_email.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/backwidget.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/textfield.dart';
import 'package:house_sage/widget/title.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      resizeToAvoidBottomInset: false,
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
              'Enter your email then we will send you OTP to reset new password.',
              textAlign: TextAlign.center,
              style: textStyle.copyWith(
                  fontSize: 15, color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            const TitleWidget(text: 'Email'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            const TextFieldWidget(
              hintText: 'Enter Your Email',
              obsecure: false,
              keyboardType: TextInputType.emailAddress,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .1),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Confirm',
              onCallBack: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CheckMail()));
              },
            ),
          ],
        ),
      )),
    );
  }
}
