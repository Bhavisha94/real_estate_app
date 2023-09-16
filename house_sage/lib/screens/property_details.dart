import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/property_image_view.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/back_button.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/buy_agent.dart';
import 'package:house_sage/widget/divider.dart';
import 'package:house_sage/widget/facilities.dart';
import 'package:house_sage/widget/see_more.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PropertyDetails extends StatefulWidget {
  const PropertyDetails({super.key});

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  PageController controller = PageController();
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorUtils.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 403,
                // decoration: const BoxDecoration(
                //     borderRadius: BorderRadius.only(
                //         bottomLeft: Radius.circular(25),
                //         bottomRight: Radius.circular(25)),
                //     image: DecorationImage(
                //         image: AssetImage('assets/images/property.png'),
                //         fit: BoxFit.fill)),
                child: Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 403,
                      child: PageView.builder(
                          itemCount: 5,
                          controller: controller,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PropertyImageView())),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 403,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/property.png'),
                                        fit: BoxFit.fill)),
                              ),
                            );
                          }),
                    ),
                    Positioned(
                      right: 25,
                      bottom: 25,
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorUtils.contentPrimaryInvarse
                                .withOpacity(.7)),
                        child: Center(
                          child:
                              SvgPicture.asset('assets/images/camera_swap.svg'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: SmoothPageIndicator(
                              controller: controller,
                              count: 5,
                              axisDirection: Axis.horizontal,
                              effect: ExpandingDotsEffect(
                                  dotHeight: 8,
                                  dotWidth: 8,
                                  spacing: 5,
                                  activeDotColor: ColorUtils.mainColor,
                                  dotColor: ColorUtils.white)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 20,
                      right: 10,
                      child: SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const BackButtonWidget(),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  color: ColorUtils.white),
                              child: Center(
                                child:
                                    SvgPicture.asset('assets/images/like.svg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    // AppBarWidget.backArrowAppBar(
                    //     title: '',
                    //     context: context,
                    //     actions: [
                    //       Padding(
                    //         padding: const EdgeInsets.symmetric(vertical: 4),
                    //         child: Container(
                    //           width: 48,
                    //           height: 48,
                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(1000),
                    //               color: ColorUtils.white),
                    //           child: Center(
                    //             child:
                    //                 SvgPicture.asset('assets/images/like.svg'),
                    //           ),
                    //         ),
                    //       ),
                    //       SizeUtils.horizontalSpacing(
                    //           width: MediaQuery.of(context).size.width * .025),
                    //     ]),
                    // const Spacer(),
                    // Stack(
                    //   children: [
                    //     Container(
                    //       width: MediaQuery.of(context).size.width,
                    //       height: MediaQuery.of(context).size.height * .07,
                    //       //color: Colors.black,
                    //     ),
                    //     Positioned(
                    //       right: 25,
                    //       child: Container(
                    //         width: 48,
                    //         height: 48,
                    //         decoration: BoxDecoration(
                    //             shape: BoxShape.circle,
                    //             color: ColorUtils.contentPrimaryInvarse
                    //                 .withOpacity(.7)),
                    //         child: Center(
                    //           child: SvgPicture.asset(
                    //               'assets/images/camera_swap.svg'),
                    //         ),
                    //       ),
                    //     ),
                    //     Positioned(
                    //       bottom: 5,
                    //       child: SizedBox(
                    //         width: MediaQuery.of(context).size.width,
                    //         child: Center(
                    //           child: SmoothPageIndicator(
                    //               controller: controller,
                    //               count: 5,
                    //               axisDirection: Axis.horizontal,
                    //               effect: ExpandingDotsEffect(
                    //                   dotHeight: 8,
                    //                   dotWidth: 8,
                    //                   spacing: 5,
                    //                   activeDotColor: ColorUtils.mainColor,
                    //                   dotColor: ColorUtils.white)),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // SizeUtils.verticalSpacing(
                    //     height: MediaQuery.of(context).size.height * .02),
                  ],
                ),
              ),
              SizeUtils.verticalSpacing(
                  height: MediaQuery.of(context).size.height * .015),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tuscan Villa',
                            style: textStyle.copyWith(
                                fontSize: 22,
                                color: ColorUtils.contentPrimary,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '\$1,220',
                            style: textStyle.copyWith(
                                color: ColorUtils.mainColor,
                                fontSize: 19,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/images/location.svg'),
                              SizeUtils.horizontalSpacing(
                                  width:
                                      MediaQuery.of(context).size.width * .01),
                              Text(
                                'Edinburgh, Scotland',
                                style: textStyle.copyWith(
                                    color: ColorUtils.contentPrimary),
                              )
                            ],
                          ),
                          Text(
                            'Per Month',
                            style: textStyle.copyWith(
                                fontSize: 12,
                                color: ColorUtils.contentSecondary),
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          items(context, 'bed', '8 Beds'),
                          items(context, 'bath', '3 Bath'),
                          items(context, 'squarfit', '2000 sqft'),
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      Text(
                        'Overview',
                        style: textStyle.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      Text(
                        'This house is minimalistic and easy to upkeep. Previous owner, Mark Walkingberd is keeping this house alive. Learn More',
                        style: textStyle.copyWith(
                            color: ColorUtils.contentSecondary),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      const SeeMore(),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gallery',
                            style: textStyle.copyWith(
                                fontSize: 18,
                                color: ColorUtils.neutrals,
                                fontWeight: FontWeight.w700),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'See All',
                              style: textStyle.copyWith(
                                  color: ColorUtils.mainColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 112,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Container(
                                width: 100,
                                height: 112,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/gallary${index + 1}.png'),
                                        fit: BoxFit.fitHeight)),
                              ),
                            );
                          },
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Text(
                        'Maps',
                        style: textStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.contentPrimary),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Image.asset(
                        'assets/images/map.png',
                        width: MediaQuery.of(context).size.width,
                        height: 194,
                        fit: BoxFit.fill,
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .02),
                      Text(
                        'Reviews',
                        style: textStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.contentPrimary),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .01),
                      Row(
                        children: [
                          Icon(
                            Icons.star_purple500_outlined,
                            color: ColorUtils.rating,
                          ),
                          SizeUtils.horizontalSpacing(
                              width: MediaQuery.of(context).size.width * .02),
                          Text(
                            '4.8 (1,275 reviews)',
                            style: textStyle.copyWith(
                                color: ColorUtils.contentSecondary,
                                fontSize: 19),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'See All',
                              style: textStyle.copyWith(
                                  color: ColorUtils.mainColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .02),
                      Text(
                        'Facilities',
                        style: textStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.contentPrimary),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      const FacilitiesWidget(),
                      const SeeMore(),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .02),
                      Text(
                        'Contact to Buyer’s Agent',
                        style: textStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.contentPrimary),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      const BuyAgent(),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .02),
                      Text(
                        'Sale & Tax History',
                        style: textStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.contentPrimary),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 48,
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: ColorUtils.ofWhite,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TabBar(
                          tabs: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  tabIndex = 0;
                                });
                              },
                              child: Container(
                                width: 160,
                                height: 40,
                                decoration: tabIndex == 0
                                    ? BoxDecoration(color: ColorUtils.white)
                                    : null,
                                child: Center(
                                  child: Text(
                                    'Sale History',
                                    style: textStyle.copyWith(
                                        color: tabIndex == 0
                                            ? ColorUtils.contentPrimary
                                            : ColorUtils.contentSecondary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  tabIndex = 1;
                                });
                              },
                              child: Container(
                                width: 160,
                                height: 40,
                                decoration: tabIndex == 1
                                    ? BoxDecoration(color: ColorUtils.white)
                                    : null,
                                child: Center(
                                  child: Text(
                                    'Tax History',
                                    style: textStyle.copyWith(
                                        color: tabIndex == 1
                                            ? ColorUtils.contentPrimary
                                            : ColorUtils.contentSecondary,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          indicatorColor: Colors.transparent,
                        ),
                      ),
                      SizeUtils.verticalSpacing(
                          height: MediaQuery.of(context).size.height * .015),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: saleHistoryList.length,
                        itemBuilder: (context, index) {
                          return Column(
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
                                        saleHistoryList[index].date,
                                        style: textStyle.copyWith(
                                            color: ColorUtils.contentSecondary),
                                      ),
                                      SizeUtils.verticalSpacing(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .01),
                                      Text(
                                        saleHistoryList[index].title,
                                        style: textStyle.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizeUtils.verticalSpacing(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .01),
                                      Text(
                                        'Realix',
                                        style: textStyle.copyWith(
                                            color: ColorUtils.mainColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '\$${saleHistoryList[index].amount}',
                                    style: textStyle.copyWith(
                                        color:
                                            ColorUtils.darkRed.withOpacity(.7),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                              const DividerWidget(),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                color: ColorUtils.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$1,220.00',
                          style: textStyle.copyWith(
                              color: ColorUtils.mainColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Total Price',
                          style: textStyle.copyWith(
                              color: ColorUtils.contentSecondary),
                        )
                      ],
                    ),
                    const Button(width: 153, text: 'Book Now')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row items(BuildContext context, String image, String text) {
    return Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: ColorUtils.primary100),
          child: Center(
            child: SvgPicture.asset('assets/images/$image.svg'),
          ),
        ),
        SizeUtils.horizontalSpacing(
            width: MediaQuery.of(context).size.width * .015),
        Text(
          text,
          style: textStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
