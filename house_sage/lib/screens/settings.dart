import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_sage/screens/about_housesage.dart';
import 'package:house_sage/screens/contact_us.dart';
import 'package:house_sage/screens/help_center.dart';
import 'package:house_sage/screens/language.dart';
import 'package:house_sage/screens/notification_settings.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/custom_switch.dart';
import 'package:house_sage/widget/divider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isNotification = true, isDarkMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.backArrowAppBar(title: 'Settings', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'Preferences',
              style: textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            settingsMenu(
              context,
              'Country',
              'USA',
              () {},
            ),
            const DividerWidget(),
            settingsMenu(context, 'Language', 'Language', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LanguageScreen(),
                  ));
            }),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'Application Settings',
              style: textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            appSettings('Notification', isNotification, (p0) {
              setState(() {
                isNotification = p0;
              });
            }, () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationSettings()));
            }),
            const DividerWidget(),
            appSettings('Dark Mode', isDarkMode, (p0) {
              setState(() {
                isDarkMode = p0;
              });
            }, () {}),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'Support',
              style: textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            menu(context, 'Help Center', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HelpCenter()));
            }),
            const DividerWidget(),
            menu(context, 'Terms and conditions', () {}),
            const DividerWidget(),
            menu(context, 'Contact Us', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ContactUS()));
            }),
            const DividerWidget(),
            menu(context, 'About HouseSage', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AboutHouseSage()));
            }),
            const DividerWidget(),
            menu(context, 'Version 4.32', () {})
          ],
        ),
      ),
    );
  }

  ListTile appSettings(
      String title, bool value, Function(bool) onChanged, VoidCallback onTap) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      onTap: onTap,
      dense: true,
      title: Text(
        title,
        style: textStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: ColorUtils.contentPrimary),
      ),
      trailing: CustomSwitch(value: value, onChanged: onChanged),
    );
  }

  ListTile settingsMenu(
      BuildContext context, String title, String value, VoidCallback? onTap) {
    return ListTile(
        contentPadding: EdgeInsets.zero,
        minVerticalPadding: 0,
        dense: true,
        onTap: onTap,
        title: Text(
          title,
          style: textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorUtils.contentPrimary),
        ),
        trailing: SizedBox(
            width: MediaQuery.of(context).size.width * .4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  value,
                  style: textStyle.copyWith(
                      fontSize: 16, color: ColorUtils.contentTertiary),
                ),
                SizeUtils.horizontalSpacing(width: 15),
                SvgPicture.asset('assets/images/forward.svg'),
              ],
            )));
  }

  menu(BuildContext context, String title, VoidCallback? onTap) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      dense: true,
      onTap: onTap,
      title: Text(
        title,
        style: textStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: ColorUtils.contentPrimary),
      ),
      trailing: SvgPicture.asset('assets/images/forward.svg'),
    );
  }
}
