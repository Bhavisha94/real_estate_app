import 'package:flutter/material.dart';
import 'package:house_sage/screens/dashboard.dart';
import 'package:house_sage/screens/forget_password.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/already_account_text.dart';
import 'package:house_sage/widget/backwidget.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/checkbox_widget.dart';
import 'package:house_sage/widget/or_widget.dart';
import 'package:house_sage/widget/social_icon.dart';
import 'package:house_sage/widget/textfield.dart';
import 'package:house_sage/widget/title.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool check = false;

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
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            Text(
              'Welcome Back',
              style: textStyle.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: ColorUtils.contentPrimary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            SizedBox(
                width: 270,
                child: Text(
                  'Log in to access your personalized real estate experience',
                  textAlign: TextAlign.center,
                  style: textStyle.copyWith(
                      fontSize: 15, color: ColorUtils.contentSecondary),
                )),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            const TitleWidget(text: 'Name'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            const TextFieldWidget(
              hintText: 'Enter Your Name',
              obsecure: false,
              keyboardType: TextInputType.name,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const TitleWidget(text: 'Email'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .01),
            const TextFieldWidget(
              hintText: 'Enter Your Email',
              obsecure: false,
              keyboardType: TextInputType.emailAddress,
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CheckboxWidget(
                      checkValue: check,
                      onChanged: (p0) {
                        setState(() {
                          check = p0!;
                        });
                      },
                    ),
                    SizeUtils.horizontalSpacing(
                        width: MediaQuery.of(context).size.width * .02),
                    Text(
                      'Remember me',
                      style: textStyle.copyWith(
                          fontSize: 13, color: ColorUtils.contentPrimary),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPassword()));
                  },
                  child: Text(
                    'Forget Password',
                    style: textStyle.copyWith(
                        fontSize: 12, color: ColorUtils.mainColor),
                  ),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Log in',
              onCallBack: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Dashboard()));
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            const OrWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SocialIcon(icon: 'fb'),
                SocialIcon(icon: 'google'),
                SocialIcon(icon: 'apple')
              ],
            ),
            const Spacer(),
            const AlreadyAccountWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .05),
          ],
        ),
      )),
    );
  }
}
