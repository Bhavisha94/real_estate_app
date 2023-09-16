// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/cubit/bottom_bar.dart/cubit/bottom_item_cubit.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';

class BottomBarWidget extends StatelessWidget {
  int selectedIndex;
  BottomBarWidget({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomItemCubit, BottomItemState>(
      listener: (context, state) {
        if (state is BottomItemIndex) {
          selectedIndex = state.index;
          log(selectedIndex.toString());
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              item(0, selectedIndex == 0 ? 'home_filled' : 'home', 'Home',
                  () => context.read<BottomItemCubit>().change(0)),
              item(1, selectedIndex == 1 ? 'search_filled' : 'search', 'Search',
                  () => context.read<BottomItemCubit>().change(1)),
              item(2, selectedIndex == 2 ? 'heart_filled' : 'heart',
                  'Favorites', () => context.read<BottomItemCubit>().change(2)),
              item(3, selectedIndex == 3 ? 'message_filled' : 'message',
                  'Message', () => context.read<BottomItemCubit>().change(3)),
              item(4, selectedIndex == 4 ? 'profile_filled' : 'profile',
                  'Profile', () => context.read<BottomItemCubit>().change(4)),
            ],
          ),
        );
      },
    );
  }

  item(int index, String image, String text, VoidCallback onCallBack) {
    return InkWell(
      onTap: onCallBack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/$image.svg'),
          SizeUtils.verticalSpacing(height: 5),
          Text(
            text,
            style: textStyle.copyWith(
                fontSize: 11,
                color: index == selectedIndex
                    ? ColorUtils.mainColor
                    : ColorUtils.contentSecondary),
          )
        ],
      ),
    );
  }
}
