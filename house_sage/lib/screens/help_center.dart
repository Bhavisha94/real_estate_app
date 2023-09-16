import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/divider.dart';
import 'package:house_sage/widget/drawer_menu.dart';
import 'package:house_sage/widget/textfield.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  bool isExpand = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBarWidget.backArrowAppBar(title: 'Help Center', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'FAQ & Support',
              style: textStyle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: ColorUtils.contentPrimary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'Find answer to your problem using this app.',
              style: textStyle.copyWith(color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            DrawerMenu(
              title: 'Terms of service',
              leading: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorUtils.mainColor),
                  child: Center(
                    child: SvgPicture.asset('assets/images/term.svg'),
                  ),
                ),
              ),
            ),
            DrawerMenu(
              title: 'Visit website',
              leading: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorUtils.mainColor),
                  child: Center(
                    child: SvgPicture.asset('assets/images/website.svg'),
                  ),
                ),
              ),
            ),
            DrawerMenu(
              title: 'Email us',
              leading: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: ColorUtils.mainColor),
                  child: Center(
                    child: SvgPicture.asset('assets/images/mail_us.svg'),
                  ),
                ),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: TextFieldWidget(
                  hintText: 'Search..',
                  obsecure: false,
                  prefix: Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13),
                    child: SvgPicture.asset(
                      'assets/images/search.svg',
                    ),
                  ),
                  suffix: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child:
                          SvgPicture.asset('assets/images/search_suffix.svg')),
                )),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Row(
              children: [
                Expanded(
                    child: Text(
                  'How do I search for properties on the app?',
                  style: textStyle.copyWith(
                      fontSize: 16, color: ColorUtils.contentPrimary),
                )),
                SizeUtils.horizontalSpacing(width: 15),
                SvgPicture.asset('assets/images/arrow_down.svg')
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const DividerWidget(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            Row(
              children: [
                Expanded(
                    child: Text(
                  'Can I save my favorite properties on the app?',
                  style: textStyle.copyWith(fontSize: 16),
                )),
                SizeUtils.horizontalSpacing(width: 15),
                InkWell(
                  onTap: () {
                    setState(() {
                      isExpand = !isExpand;
                    });
                  },
                  child: SvgPicture.asset(
                      'assets/images/${isExpand ? 'arrow_up.svg' : 'arrow_down.svg'}'),
                )
              ],
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            isExpand
                ? Text(
                    'Yes, most real estate apps allow you to save properties that you\'re interested in so that you can easily find them later.',
                    style: textStyle.copyWith(
                        fontSize: 13, color: ColorUtils.contentSecondary),
                  )
                : const SizedBox(),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .02),
            const DividerWidget()
          ],
        ),
      ),
    );
  }
}
