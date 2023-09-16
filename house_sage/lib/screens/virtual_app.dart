import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/confirm_request.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';

class VirtualApp extends StatefulWidget {
  const VirtualApp({super.key});

  @override
  State<VirtualApp> createState() => _VirtualAppState();
}

class _VirtualAppState extends State<VirtualApp> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Select virtual app', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            ListView.builder(
              itemCount: virtualAppList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .085,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: ColorUtils.neutrals6)),
                    child: Row(
                      children: [
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .07),
                        SvgPicture.asset(
                            'assets/images/${virtualAppList[index].image}.svg'),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .07),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              virtualAppList[index].text,
                              style: textStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: ColorUtils.contentPrimary),
                            ),
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .005),
                            Text(
                              'Recommend',
                              style: textStyle.copyWith(
                                  fontSize: 12,
                                  color: ColorUtils.contentSecondary),
                            )
                          ],
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectIndex = index;
                            });
                          },
                          child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 1, color: ColorUtils.neutrals6),
                            ),
                            child: Center(
                              child: Container(
                                width: 16,
                                height: 16,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: index == selectIndex
                                        ? ColorUtils.mainColor
                                        : Colors.transparent),
                              ),
                            ),
                          ),
                        ),
                        SizeUtils.horizontalSpacing(
                            width: MediaQuery.of(context).size.width * .05),
                      ],
                    ),
                  ),
                );
              },
            ),
            const Spacer(),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Next',
              onCallBack: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ConfirmRequest()));
              },
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .035)
          ],
        ),
      ),
    );
  }
}
