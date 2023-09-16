import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/divider.dart';
import 'package:house_sage/widget/drawer_menu.dart';

class AboutHouseSage extends StatefulWidget {
  const AboutHouseSage({super.key});

  @override
  State<AboutHouseSage> createState() => _AboutHouseSageState();
}

class _AboutHouseSageState extends State<AboutHouseSage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.backArrowAppBar(
          title: 'About HouseSage', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .035),
              Image.asset(
                'assets/images/splash.png',
                width: 97,
                height: 85,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HouseSage ',
                    style: textStyle.copyWith(
                        fontFamily: 'IndieFlower',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'V10.5.2',
                    style: textStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .07),
              const DividerWidget(),
              DrawerMenu(
                title: 'Job Vacancy',
                trailing: SvgPicture.asset('assets/images/forward.svg'),
                textStyle: textStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.contentPrimary),
              ),
              const DividerWidget(),
              DrawerMenu(
                title: 'Privacy Policy',
                trailing: SvgPicture.asset('assets/images/forward.svg'),
                textStyle: textStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.contentPrimary),
              ),
              const DividerWidget(),
              DrawerMenu(
                title: 'Accessibility',
                trailing: SvgPicture.asset('assets/images/forward.svg'),
                textStyle: textStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.contentPrimary),
              ),
              const DividerWidget(),
              DrawerMenu(
                title: 'Rate us',
                trailing: SvgPicture.asset('assets/images/forward.svg'),
                textStyle: textStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.contentPrimary),
              ),
              const DividerWidget(),
              DrawerMenu(
                title: 'Follow us on Social Media',
                trailing: SvgPicture.asset('assets/images/forward.svg'),
                textStyle: textStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: ColorUtils.contentPrimary),
              ),
              const DividerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
