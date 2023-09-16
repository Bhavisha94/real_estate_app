import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Notifications', context: context),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Recent Notifications',
                    style:
                        textStyle.copyWith(color: ColorUtils.contentSecondary),
                  ),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.height * .013),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        color: ColorUtils.mainColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        '2',
                        style: textStyle.copyWith(
                            fontSize: 12,
                            color: ColorUtils.contentPrimaryInvarse),
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Clear All',
                      style: textStyle.copyWith(color: ColorUtils.mainColor),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .87,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: notificationList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          minVerticalPadding: 0,
                          leading: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: ColorUtils.mainColor),
                            child: Center(
                              child: SvgPicture.asset(
                                  'assets/images/${notificationList[index].image}.svg'),
                            ),
                          ),
                          title: Text(
                            notificationList[index].title,
                            style: textStyle,
                          ),
                          subtitle: Text(
                            notificationList[index].subTitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: Text(
                            notificationList[index].time,
                            style: textStyle.copyWith(
                                fontFamily: 'Avenir',
                                fontSize: 12,
                                color: ColorUtils.gray01),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}

class EmptyNotification extends StatelessWidget {
  const EmptyNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/noti.svg'),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .01),
        Text(
          'No Notifications Yet',
          style: textStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: ColorUtils.contentPrimary),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .01),
        Text(
          'No notification right now, notifications about your activity will show up here.',
          textAlign: TextAlign.center,
          style: textStyle.copyWith(color: ColorUtils.contentSecondary),
        ),
        SizeUtils.verticalSpacing(
            height: MediaQuery.of(context).size.height * .025),
        Button(
            width: MediaQuery.of(context).size.width * .5,
            text: 'Notifications Settings')
      ],
    );
  }
}
