import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/month_text.dart';
import 'package:house_sage/widget/notification.dart';
import 'package:house_sage/widget/textfield.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBarWidget.backArrowAppBar(
          title: 'Featured',
          context: context,
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
        child: SingleChildScrollView(
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
                        child: SvgPicture.asset(
                            'assets/images/search_suffix.svg')),
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
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .01),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                //padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: featuredScreenList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: .82),
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Container(
                          height: 114,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/${featuredScreenList[index].image}.png'),
                                  fit: BoxFit.fill)),
                          child: Stack(
                            children: [
                              Positioned(
                                right: 15,
                                top: 15,
                                child: Container(
                                  width: 45,
                                  height: 18,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(11),
                                      color: ColorUtils.white),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/star.svg'),
                                      Text(
                                        '4.3',
                                        style: textStyle.copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .015),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 59,
                                    height: 18,
                                    decoration: BoxDecoration(
                                        color: ColorUtils.primary100,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        'Apartment',
                                        style: textStyle.copyWith(
                                            fontSize: 8,
                                            color: ColorUtils.mainColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Text(
                                          '\$${featuredScreenList[index].price}',
                                          style: textStyle.copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: ColorUtils.mainColor),
                                        ),
                                        const Month()
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                              Text(
                                featuredScreenList[index].place,
                                style: textStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: ColorUtils.contentPrimary),
                              ),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/images/location.svg'),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          featuredScreenList[index].location,
                                          style: textStyle.copyWith(
                                              fontSize: 8,
                                              color:
                                                  ColorUtils.contentSecondary),
                                        )
                                      ],
                                    ),
                                  ),
                                  SvgPicture.asset(
                                      'assets/images/heart_small.svg')
                                ],
                              )
                            ],
                          ),
                        ),
                        SizeUtils.verticalSpacing(
                            height: MediaQuery.of(context).size.height * .005)
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
