import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/edit_profile.dart';
import 'package:house_sage/screens/forget_password.dart';
import 'package:house_sage/screens/my_favorite_screen.dart';
import 'package:house_sage/screens/notification.dart';
import 'package:house_sage/screens/past_tour.dart';
import 'package:house_sage/screens/recent_view.dart';
import 'package:house_sage/screens/settings.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/drawer_menu.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Profile',
          style: textStyle.copyWith(
              fontSize: 17,
              color: ColorUtils.contentPrimary,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    const SizedBox(
                      width: 120,
                      height: 120,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/profile_img.png'),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditProfile()));
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              color: ColorUtils.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: SvgPicture.asset('assets/images/edit.svg'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Mahmodul Hasan',
                      style: textStyle.copyWith(
                          fontSize: 17,
                          color: ColorUtils.contentPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                    SizeUtils.horizontalSpacing(width: 5),
                    SvgPicture.asset('assets/images/tick.svg')
                  ],
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .005),
                Text(
                  'info.mamodul@gmail.com',
                  style: textStyle.copyWith(
                      fontSize: 13, color: ColorUtils.contentTertiary),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .015),
                title(context, 'Home search'),
                menu('eye', 'Recent Viewed', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const RecentView(),
                      ));
                }),
                menu('heart_small', 'My favorites', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyFavorite()));
                }),
                menu('home_tour', 'Past Tour', () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const PastTour()));
                }),
                title(context, 'General'),
                menu('list', 'My Listing', () {}),
                menu('sell_home', 'Sell My Home', () {}),
                menu('edit_profile', 'Profile Information', () {}),
                menu('setting', 'Settings', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settings()));
                }),
                menu('key', 'Forgot Password', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ForgetPassword()));
                }),
                menu('sms', 'Notifications', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
                }),
                title(context, 'Home search'),
                menu('rate', 'Rate Us', () {}),
                menu('information', 'Help Center', () {}),
                menu('logout_btn', 'Log Out', () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DrawerMenu menu(String image, String name, VoidCallback? onTap) {
    return DrawerMenu(
      onTap: onTap,
      leading: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: ColorUtils.primary50),
          padding: const EdgeInsets.all(11),
          child: SvgPicture.asset('assets/images/$image.svg'),
        ),
      ),
      title: name,
      textStyle: textStyle.copyWith(
        color: ColorUtils.contentSecondary,
        fontSize: 13,
      ),
      trailing: InkWell(
        onTap: onTap,
        child: SvgPicture.asset('assets/images/forward.svg'),
      ),
    );
  }

  SizedBox title(BuildContext context, String text) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Text(
        text,
        style: textStyle.copyWith(fontSize: 15, fontWeight: FontWeight.w600),
      ),
    );
  }
}
