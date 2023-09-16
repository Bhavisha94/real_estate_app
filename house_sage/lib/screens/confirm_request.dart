import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/divider.dart';

class ConfirmRequest extends StatefulWidget {
  const ConfirmRequest({super.key});

  @override
  State<ConfirmRequest> createState() => _ConfirmRequestState();
}

class _ConfirmRequestState extends State<ConfirmRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Select virtual app', context: context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 195,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: ColorUtils.primary50),
              child: Column(
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .035),
                  SvgPicture.asset('assets/images/confirm.svg'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .025),
                  Text(
                    'Request Recieved!',
                    style: textStyle.copyWith(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Text(
                    'We’re checking if the home can be seen on ',
                    style:
                        textStyle.copyWith(color: ColorUtils.contentSecondary),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mon, April 4 4:00 PM',
                        style: textStyle.copyWith(
                            color: ColorUtils.contentPrimary,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        ' to ',
                        style: textStyle.copyWith(
                          color: ColorUtils.contentSecondary,
                        ),
                      ),
                      Text(
                        '4:45 PM.',
                        style: textStyle.copyWith(
                            color: ColorUtils.contentPrimary,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .025),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 164,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: ColorUtils.primary50),
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 0),
              child: Column(
                children: [
                  Text(
                    'Associate Capital Properties LLC Agent will take you on the tour!',
                    style: textStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorUtils.contentPrimary),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  const DividerWidget(),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/person.png'),
                              fit: BoxFit.fill)),
                    ),
                    title: Text(
                      'Mahmodul Hasan',
                      style: textStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorUtils.contentPrimary),
                    ),
                    subtitle: Text(
                      'Ui Ux & Visual Designer',
                      style: textStyle.copyWith(
                          fontSize: 14, color: ColorUtils.contentSecondary),
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Button(
              width: MediaQuery.of(context).size.width * .9,
              text: 'Done',
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
