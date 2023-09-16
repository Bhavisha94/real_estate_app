import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/textfield.dart';
import 'package:house_sage/widget/title.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar:
          AppBarWidget.backArrowAppBar(title: 'Edit Profile', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/account.png'))),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          color: ColorUtils.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Center(
                          child: SvgPicture.asset('assets/images/camera.svg')),
                    ),
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .03),
              const TitleWidget(text: 'Name'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              const TextFieldWidget(
                hintText: 'Enter Your Name',
                obsecure: false,
                keyboardType: TextInputType.name,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const TitleWidget(text: 'Email'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              const TextFieldWidget(
                hintText: 'Enter Your Email',
                obsecure: false,
                keyboardType: TextInputType.emailAddress,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              const TitleWidget(text: 'Address'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              const TextFieldWidget(
                hintText: 'Enter Your Address',
                obsecure: false,
                keyboardType: TextInputType.emailAddress,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
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
              const Spacer(),
              Button(
                  width: MediaQuery.of(context).size.width * .9,
                  text: 'Send Now'),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .05),
            ],
          ),
        ),
      ),
    );
  }
}
