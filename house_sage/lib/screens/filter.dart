import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:house_sage/cubit/filter/cubit/filter_cubit.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';
import 'package:house_sage/widget/decrement_btn.dart';
import 'package:house_sage/widget/increment_btn.dart';
import 'package:house_sage/widget/property_box.dart';
import 'package:house_sage/widget/slider_widget.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  int categoryIndex = 0;
  int bedroom = 4, bathroom = 2, stairs = 2;
  double rate = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.backArrowAppBar(
        title: 'Filter',
        context: context,
        actions: [
          InkWell(
              onTap: () {},
              child: Center(
                child: Text(
                  'Reset',
                  style: textStyle.copyWith(
                      color: ColorUtils.mainColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              )),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .02)
        ],
      ),
      body: BlocConsumer<FilterCubit, FilterState>(
        listener: (context, state) {
          log(state.toString());
          if (state is CompletenessFilter) {
            if (state.bathroom != null) {
              bathroom = state.bathroom!;
            } else if (state.bedroom != null) {
              bedroom = state.bedroom!;
            } else if (state.stairs != null) {
              stairs = state.stairs!;
            }
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title('Categories'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Row(
                    children: [
                      category(context, 0, 'All', 77,
                          () => context.read<FilterCubit>().category(0)),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .025),
                      category(context, 1, 'House', 95,
                          () => context.read<FilterCubit>().category(1)),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .025),
                      category(context, 2, 'Apartment', 124,
                          () => context.read<FilterCubit>().category(2))
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    children: [
                      category(context, 3, 'Villa', 81,
                          () => context.read<FilterCubit>().category(3)),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .025),
                      category(context, 4, 'Townhouse', 126,
                          () => context.read<FilterCubit>().category(4)),
                      SizeUtils.horizontalSpacing(
                          width: MediaQuery.of(context).size.width * .025),
                      category(context, 5, 'Condo', 97,
                          () => context.read<FilterCubit>().category(5))
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  title('Price Range'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  const SliderWidget(),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      title('Completeness'),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View Detail',
                          style: textStyle.copyWith(
                              fontSize: 16,
                              color: ColorUtils.mainColor,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bedroom',
                        style: textStyle.copyWith(
                            fontSize: 16, color: ColorUtils.contentPrimary),
                      ),
                      Row(
                        children: [
                          Decrement(
                            onCallBack: () {
                              setState(() {
                                bedroom--;
                              });
                            },
                          ),
                          text(bedroom.toString()),
                          Increment(
                            onCallBack: () {
                              setState(() {
                                bedroom++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bathroom',
                        style: textStyle.copyWith(
                            fontSize: 16, color: ColorUtils.contentPrimary),
                      ),
                      Row(
                        children: [
                          Decrement(
                            onCallBack: () {
                              setState(() {
                                bathroom--;
                              });
                            },
                          ),
                          text(bathroom.toString()),
                          Increment(
                            onCallBack: () {
                              setState(() {
                                bathroom++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stairs',
                        style: textStyle.copyWith(
                            fontSize: 16, color: ColorUtils.contentPrimary),
                      ),
                      Row(
                        children: [
                          Decrement(
                            onCallBack: () {
                              setState(() {
                                bedroom--;
                              });
                            },
                          ),
                          text(stairs.toString()),
                          Increment(
                            onCallBack: () {
                              setState(() {
                                bedroom++;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  title('Property Facts'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  Text(
                    'Square Feet',
                    style: textStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorUtils.contentPrimary),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const PropertyBox(text: 'Min'),
                      Icon(
                        Icons.remove,
                        color: ColorUtils.primary200,
                      ),
                      const PropertyBox(text: 'Max'),
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Text(
                    'Lot Size',
                    style: textStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        color: ColorUtils.contentPrimary),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const PropertyBox(text: 'Min'),
                      Icon(
                        Icons.remove,
                        color: ColorUtils.primary200,
                      ),
                      const PropertyBox(text: 'Max'),
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .02),
                  title('Rating'),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // RatingBar.builder(
                      //   initialRating: rate,
                      //   minRating: 1,
                      //   direction: Axis.horizontal,
                      //   allowHalfRating: true,
                      //   itemCount: 5,
                      //   itemSize: 30,
                      //   itemPadding:
                      //       const EdgeInsets.symmetric(horizontal: 4.0),
                      //   itemBuilder: (context, _) => Icon(
                      //     Icons.star,
                      //     color: ColorUtils.rating,
                      //   ),
                      //   onRatingUpdate: (rating) {
                      //     setState(() {
                      //       rate = rating;
                      //     });
                      //   },
                      // ),
                      Text(
                        '${rate.toInt()}/5',
                        style: textStyle.copyWith(
                            fontSize: 16, color: ColorUtils.contentPrimary),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .025),
                  Button(
                      width: MediaQuery.of(context).size.width,
                      text: 'Apply Filter')
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  text(String text) {
    return BlocBuilder<FilterCubit, FilterState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: 24,
            height: 22,
            child: Center(
              child: Text(
                text,
                style: textStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        );
      },
    );
  }

  Text title(String text) {
    return Text(
      text,
      style: textStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: ColorUtils.contentPrimary),
    );
  }

  Widget category(BuildContext context, int index, String text, double width,
      VoidCallback? onCallBack) {
    return BlocConsumer<FilterCubit, FilterState>(
      listener: (context, state) {
        if (state is FilterCategory) {
          categoryIndex = state.index;
        }
      },
      builder: (context, state) {
        return InkWell(
          onTap: onCallBack,
          child: Container(
            width: width,
            height: MediaQuery.of(context).size.height * .045,
            decoration: BoxDecoration(
                border: Border.all(
                    color: index == categoryIndex
                        ? Colors.transparent
                        : ColorUtils.mainColor),
                color: index == categoryIndex
                    ? ColorUtils.mainColor
                    : ColorUtils.white,
                borderRadius: BorderRadius.circular(40)),
            child: Center(
              child: Text(
                text,
                style: textStyle.copyWith(
                    color: index == categoryIndex
                        ? ColorUtils.white
                        : ColorUtils.mainColor),
              ),
            ),
          ),
        );
      },
    );
  }
}
