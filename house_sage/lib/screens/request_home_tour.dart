// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/verify_identity.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/calender.dart';
import 'package:house_sage/widget/time_dialog.dart';

class RequestHomeTour extends StatefulWidget {
  const RequestHomeTour({super.key});

  @override
  State<RequestHomeTour> createState() => _RequestHomeTourState();
}

class _RequestHomeTourState extends State<RequestHomeTour> {
  int typeIndex = 0, timeIndex = 1, scheduleIndex = 3;
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Request a home tour', context: context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Schedule',
                      style: textStyle.copyWith(
                          fontSize: 18, color: ColorUtils.contentSecondary)),
                  InkWell(
                      //onTap: () => showCalender(),
                      child:
                          SvgPicture.asset('assets/images/calendar-edit.svg'))
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
              height: 72,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                itemCount: scheduleList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      width: 56,
                      height: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: scheduleIndex == index
                              ? ColorUtils.mainColor
                              : ColorUtils.primary50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            scheduleList[index].date,
                            style: textStyle.copyWith(
                                color: scheduleIndex == index
                                    ? ColorUtils.white
                                    : ColorUtils.mainColor,
                                fontSize: 16),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            scheduleList[index].day,
                            style: textStyle.copyWith(
                                fontSize: 12,
                                color: scheduleIndex == index
                                    ? ColorUtils.white
                                    : ColorUtils.mainColor),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Time',
                      style: textStyle.copyWith(
                          fontSize: 18, color: ColorUtils.contentSecondary)),
                  InkWell(
                    //onTap: () => showTime(),
                    child: SvgPicture.asset('assets/images/timer.svg'),
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
              height: 41,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: timeList.length,
                padding: const EdgeInsets.only(left: 20),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          timeIndex = index;
                        });
                      },
                      child: Container(
                        width: 83,
                        height: 41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: timeIndex == index
                                ? ColorUtils.mainColor
                                : ColorUtils.primary50),
                        child: Center(
                          child: Text(
                            timeList[index],
                            style: textStyle.copyWith(
                                color: timeIndex == index
                                    ? ColorUtils.white
                                    : ColorUtils.contentSecondary),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Text('Type',
                  style: textStyle.copyWith(
                      fontSize: 18, color: ColorUtils.contentSecondary)),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Row(
                children: [
                  type(0, 'virtual', 'Virtual', () {
                    setState(() {
                      typeIndex = 0;
                    });
                  }),
                  SizeUtils.horizontalSpacing(
                      width: MediaQuery.of(context).size.width * .02),
                  type(1, 'profile', 'In Person', () {
                    setState(() {
                      typeIndex = 1;
                    });
                  })
                ],
              ),
            ),
            const Spacer(),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Schedule Tour',
              onCallBack: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VerifyIdentity()));
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035),
          ],
        ),
      ),
    );
  }

  Widget type(int index, String image, String text, VoidCallback? onCallBack) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: 128,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: typeIndex == index
                ? ColorUtils.mainColor
                : ColorUtils.primary50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/$image.svg',
              color: typeIndex == index
                  ? ColorUtils.white
                  : ColorUtils.contentSecondary,
            ),
            SizeUtils.horizontalSpacing(width: 5),
            Text(
              text,
              style: textStyle.copyWith(
                  color: typeIndex == index
                      ? ColorUtils.white
                      : ColorUtils.contentSecondary),
            )
          ],
        ),
      ),
    );
  }

  showCalender() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Calender(),
        );
      },
    );
  }

  showTime() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const TimeDialog(),
        );
      },
    );
  }
}
