import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/notification.dart';
import 'package:house_sage/widget/recommendation.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/widget/recommendation_item_widget.dart';

class RecommendationScreen extends StatefulWidget {
  const RecommendationScreen({super.key});

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {
  int recommendationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Recommendation',
          context: context,
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: NotificationWidget(),
            ),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .02),
          ]),
      body: Column(
        children: [
          Recommentdation(recommendationIndex: recommendationIndex),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          SizedBox(
            width: MediaQuery.of(context).size.width * .9,
            child: Row(
              children: [
                Text(
                  'Showing ',
                  style: textStyle.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorUtils.gray900),
                ),
                Text(
                  '500 Featured',
                  style: textStyle.copyWith(
                      fontSize: 15,
                      color: ColorUtils.blue700,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  'Sort',
                  style: textStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorUtils.neutrals),
                ),
                SizeUtils.horizontalSpacing(
                    width: MediaQuery.of(context).size.width * .02),
                SvgPicture.asset('assets/images/sort.svg'),
              ],
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemCount: recItemList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: .87),
            itemBuilder: (context, index) {
              return RecommentionItem(recItemList: recItemList[index]);
            },
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .015),
        ],
      ),
    );
  }
}
