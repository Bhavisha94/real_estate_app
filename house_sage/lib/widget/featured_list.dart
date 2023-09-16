import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/property_details.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/month_text.dart';

class FeaturedList extends StatefulWidget {
  const FeaturedList({super.key});

  @override
  State<FeaturedList> createState() => _FeaturedListState();
}

class _FeaturedListState extends State<FeaturedList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .31,
        child: ListView.builder(
          itemCount: featuredList.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 15),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PropertyDetails())),
                child: SizedBox(
                    width: MediaQuery.of(context).size.height * .27,
                    height: MediaQuery.of(context).size.height * .25,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          Container(
                            height: 142,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(25)),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/${featuredList[index].image}.png'),
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
                              height:
                                  MediaQuery.of(context).size.height * .015),
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
                                            '\$${featuredList[index].price}',
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
                                    height: MediaQuery.of(context).size.height *
                                        .01),
                                Text(
                                  featuredList[index].place,
                                  style: textStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: ColorUtils.contentPrimary),
                                ),
                                SizeUtils.verticalSpacing(
                                    height: MediaQuery.of(context).size.height *
                                        .01),
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
                                            featuredList[index].location,
                                            style: textStyle.copyWith(
                                                fontSize: 11,
                                                color: ColorUtils
                                                    .contentSecondary),
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
                    )),
              ),
            );
          },
        ));
  }
}
