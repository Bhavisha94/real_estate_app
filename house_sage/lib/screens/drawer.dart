import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/edit_profile.dart';
import 'package:house_sage/screens/forget_password.dart';
import 'package:house_sage/screens/help_center.dart';
import 'package:house_sage/screens/notification.dart';
import 'package:house_sage/screens/recent_view.dart';
import 'package:house_sage/screens/request_home_tour.dart';
import 'package:house_sage/screens/settings.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/custom_switch.dart';
import 'package:house_sage/widget/drawer_menu.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  bool darkMode = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              ListTile(
                leading: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(52),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/profile_img.png'),
                          fit: BoxFit.fill)),
                ),
                title: Text(
                  'Mahmodul Hasan',
                  style: textStyle.copyWith(
                      color: ColorUtils.contentPrimary,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'info.mahmodul@gmail.com',
                  style: textStyle.copyWith(
                      fontSize: 12, color: ColorUtils.contentPrimary),
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              const Divider(
                thickness: 1,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    DrawerMenu(
                      leading:
                          SvgPicture.asset('assets/images/edit_profile.svg'),
                      title: 'Edit Profile',
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EditProfile())),
                    ),
                    DrawerMenu(
                      leading: SvgPicture.asset('assets/images/eye.svg'),
                      title: 'Recent Viewed',
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RecentView())),
                    ),
                    DrawerMenu(
                      leading: SvgPicture.asset('assets/images/sell.svg'),
                      title: 'Sell My Home',
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                    ),
                    DrawerMenu(
                      leading: SvgPicture.asset('assets/images/home_tour.svg'),
                      title: 'Request a Home tour',
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RequestHomeTour())),
                    ),
                    DrawerMenu(
                      leading: SvgPicture.asset('assets/images/sms.svg'),
                      title: 'Notifications',
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const NotificationScreen())),
                    ),
                    DrawerMenu(
                      leading: SvgPicture.asset('assets/images/key.svg'),
                      title: 'Forgot Password',
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgetPassword())),
                    ),
                    DrawerMenu(
                      leading: SvgPicture.asset('assets/images/setting.svg'),
                      title: 'Settings',
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Settings())),
                    ),
                    DrawerMenu(
                      leading: SvgPicture.asset('assets/images/moon.svg'),
                      title: 'Dark Mode',
                      trailing: CustomSwitch(
                          value: darkMode,
                          onChanged: (val) {
                            setState(() {
                              if (darkMode) {
                                darkMode = false;
                              } else {
                                darkMode = true;
                              }
                            });
                          }),
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                    ),
                    DrawerMenu(
                      leading:
                          SvgPicture.asset('assets/images/information.svg'),
                      title: 'Help Center',
                      textStyle: textStyle.copyWith(
                          color: ColorUtils.contentSecondary),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HelpCenter())),
                    ),
                  ],
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .03),
              const Divider(
                thickness: 1,
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              ListTile(
                leading: SvgPicture.asset('assets/images/logout.svg'),
                horizontalTitleGap: 0,
                title: Text(
                  'Log Out',
                  style: textStyle.copyWith(
                      color: ColorUtils.darkRed, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
