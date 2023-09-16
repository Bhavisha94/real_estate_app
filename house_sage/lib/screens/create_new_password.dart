import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/dashboard.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/checkbox_widget.dart';
import 'package:house_sage/widget/textfield.dart';
import 'package:house_sage/widget/title.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Create new password', context: context),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .035),
              SvgPicture.asset('assets/images/create_psw.svg'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .03),
              Text(
                'Create new password',
                style: textStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ColorUtils.contentSecondary),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .03),
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
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
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
              const Spacer(),
              Button(
                width: MediaQuery.of(context).size.width,
                text: 'Continue',
                onCallBack: () => showSuccessDialog(),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .035),
            ],
          ),
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
            height: MediaQuery.of(context).size.height * .5,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .025),
                SvgPicture.asset('assets/images/success.svg'),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Text(
                  'Congratulations!',
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
