import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/registration.dart';
import 'package:house_sage/screens/welcome_screen2.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/account_text.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/or_widget.dart';
import 'package:house_sage/widget/social_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .1),
            SvgPicture.asset('assets/images/welcome_logo.svg'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .05),
            Text(
              'Let\'s you in',
              style:
                  textStyle.copyWith(fontWeight: FontWeight.w600, fontSize: 28),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            const SocialButton(icon: 'apple', text: 'Apple'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const SocialButton(icon: 'fb', text: 'Facebook'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            const SocialButton(icon: 'google', text: 'Google'),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            const OrWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Sign in with password',
              onCallBack: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const WelcomeScreen2()));
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .08),
            DontAccountText(
              onCallBack: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const RegistrationScreen()));
              },
            )
          ],
        ),
      ),
    );
  }
}
