import 'package:flutter/material.dart';
import 'package:house_sage/screens/dashboard.dart';
import 'package:house_sage/screens/login.dart';
import 'package:house_sage/screens/registration.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/widget/account_text.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/or_widget.dart';
import 'package:house_sage/widget/social_icon.dart';

class WelcomeScreen2 extends StatefulWidget {
  const WelcomeScreen2({super.key});

  @override
  State<WelcomeScreen2> createState() => _WelcomeScreen2State();
}

class _WelcomeScreen2State extends State<WelcomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 0,
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .06),
                  Image.asset(
                    'assets/images/welcome_bg.png',
                    width: MediaQuery.of(context).size.width,
                    height: 508,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Button(
                      width: MediaQuery.of(context).size.width * .9,
                      text: 'Log in',
                      onCallBack: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Login()));
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
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .035),
                    DontAccountText(
                      onCallBack: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const RegistrationScreen()));
                      },
                    ),
                    SizeUtils.verticalSpacing(
                        height: MediaQuery.of(context).size.height * .05),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
