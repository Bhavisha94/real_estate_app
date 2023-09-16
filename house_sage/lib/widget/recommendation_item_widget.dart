// ignore_for_file: deprecated_member_use

import 'package:flutter_svg/svg.dart';
import 'package:house_sage/model/recommendation.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:flutter/material.dart';

class RecommentionItem extends StatelessWidget {
  final RecommendationModel recItemList;
  const RecommentionItem({super.key, required this.recItemList});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/${recItemList.image}.png'),
              fit: BoxFit.fill)),
      child: Stack(
        children: [
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 46,
              height: 20,
              decoration: BoxDecoration(
                  color: ColorUtils.shadeFO,
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/images/star.svg'),
                  Text(
                    '4.5',
                    style: textStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorUtils.mainColor,
                        fontSize: 11),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 15,
            bottom: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recItemList.name,
                  style: textStyle.copyWith(
                      color: ColorUtils.white, fontWeight: FontWeight.bold),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .005),
                Text(
                  recItemList.location,
                  style: textStyle.copyWith(
                      color: ColorUtils.bgPrimary, fontSize: 11),
                ),
                SizeUtils.verticalSpacing(
                    height: MediaQuery.of(context).size.height * .008),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .38,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Text(
                              '\$${recItemList.price}',
                              style: textStyle.copyWith(
                                  color: ColorUtils.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '/ Month',
                              style: textStyle.copyWith(
                                  fontSize: 11, color: ColorUtils.primary50),
                            )
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/heart_small.svg',
                        color: ColorUtils.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
