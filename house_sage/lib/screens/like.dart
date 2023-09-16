import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/month_text.dart';
import 'package:house_sage/widget/notification.dart';
import 'package:house_sage/widget/textfield.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text('Favorites',
              style: textStyle.copyWith(
                  color: ColorUtils.contentPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: NotificationWidget(),
            ),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .02),
          ]),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .005),
            SizedBox(
                width: MediaQuery.of(context).size.width,
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
                Text(
                  'Showing ',
                  style: textStyle.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: ColorUtils.gray900),
                ),
                Text(
                  '545 Featured',
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
            SizedBox(
              height: MediaQuery.of(context).size.height * .015,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Container(
                              height: 154,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/favorite${index + 1}.png'),
                                      fit: BoxFit.fill)),
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: 154,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                  Positioned(
                                    top: 20,
                                    left: 20,
                                    child: Container(
                                      width: 86,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(28),
                                          color:
                                              ColorUtils.white.withOpacity(.6)),
                                      child: Center(
                                        child: Text(
                                          'Apartment',
                                          style: textStyle.copyWith(
                                              fontSize: 12,
                                              color: ColorUtils.mainColor,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .02),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Santorini Retreat',
                                            style: textStyle.copyWith(
                                                fontSize: 15,
                                                color: ColorUtils.black100,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizeUtils.verticalSpacing(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .003),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/images/location_small.svg'),
                                              SizeUtils.horizontalSpacing(
                                                  width: 5),
                                              Text(
                                                'Auckland, New Zealand',
                                                style: textStyle.copyWith(
                                                    fontSize: 12,
                                                    color: ColorUtils
                                                        .contentSecondary),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: ColorUtils
                                                .contentSecondaryInvarse,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Center(
                                          child: SvgPicture.asset(
                                              'assets/images/red_heart.svg'),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizeUtils.verticalSpacing(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01),
                                  Row(
                                    children: [
                                      Text(
                                        '\$19,239 ',
                                        style: textStyle.copyWith(
                                            color: ColorUtils.mainColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Month(),
                                      const Spacer(),
                                      SvgPicture.asset(
                                        'assets/images/star.svg',
                                      ),
                                      SizeUtils.horizontalSpacing(width: 5),
                                      Text(
                                        '500',
                                        style: textStyle.copyWith(
                                            color: ColorUtils.grayScale500,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                  SizeUtils.verticalSpacing(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .01),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
