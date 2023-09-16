import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/reset_password.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/backwidget.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/checkbox_widget.dart';
import 'package:house_sage/widget/or_widget.dart';
import 'package:house_sage/widget/social_icon.dart';
import 'package:house_sage/widget/textfield.dart';
import 'package:house_sage/widget/title.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool terms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            const BackWidget(),
            SizedBox(
              width: 300,
              child: Text(
                'Register Your New Account',
                textAlign: TextAlign.center,
                style: textStyle.copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.contentPrimary),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Text(
              'Enter your information below',
              textAlign: TextAlign.center,
              style: textStyle.copyWith(
                  fontSize: 15, color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
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
                height: MediaQuery.of(context).size.height * .02),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckboxWidget(
                  checkValue: terms,
                  onChanged: (p0) {
                    setState(() {
                      terms = p0!;
                    });
                  },
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .05),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                        text: 'By creating an account, you agree to our ',
                        style: textStyle.copyWith(
                            color: ColorUtils.grayScale500, fontSize: 14),
                        children: [
                          WidgetSpan(
                              child: InkWell(
                            onTap: () {},
                            child: Text(
                              'Terms and Condition',
                              style: textStyle.copyWith(
                                  color: ColorUtils.mainColor, fontSize: 14),
                            ),
                          ))
                        ]),
                  ),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Sign up',
              onCallBack: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ResetPassword()));
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
            const OrWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SocialIcon(icon: 'fb'),
                SocialIcon(icon: 'google'),
                SocialIcon(icon: 'apple')
              ],
            ),
          ],
        ),
      )),
    );
  }
}
