// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:house_sage/utils/list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_sage/cubit/recommendation/cubit/recommendation_cubit.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class Recommentdation extends StatelessWidget {
  int recommendationIndex;
  Recommentdation({super.key, required this.recommendationIndex});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecommendationCubit, RecommendationState>(
      listener: (context, state) {
        if (state is RecommentdationIndex) {
          recommendationIndex = state.index;
        }
      },
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 36,
          padding: const EdgeInsets.only(left: 15),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendationList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () =>
                      context.read<RecommendationCubit>().change(index),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .36,
                    padding: const EdgeInsets.fromLTRB(26, 6, 26, 6),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: index == recommendationIndex
                                ? Colors.transparent
                                : ColorUtils.mainColor),
                        color: index == recommendationIndex
                            ? ColorUtils.mainColor
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: Text(
                        recommendationList[index],
                        style: textStyle.copyWith(
                            color: index == recommendationIndex
                                ? ColorUtils.white
                                : ColorUtils.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
