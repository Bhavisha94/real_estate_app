import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/notification.dart';
import 'package:house_sage/utils/colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NotificationScreen())),
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: ColorUtils.contentDisable,
            )),
        child: Center(
          child: SizedBox(
            width: 24,
            height: 24,
            child: Stack(
              children: [
                SvgPicture.asset('assets/images/notification.svg'),
                Positioned(
                  right: 0,
                  top: 1,
                  child: CircleAvatar(
                    backgroundColor: ColorUtils.red,
                    radius: 5,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
