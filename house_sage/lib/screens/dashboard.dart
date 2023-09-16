import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_sage/cubit/bottom_bar.dart/cubit/bottom_item_cubit.dart';
import 'package:house_sage/screens/home.dart';
import 'package:house_sage/screens/like.dart';
import 'package:house_sage/screens/message.dart';
import 'package:house_sage/screens/profile.dart';
import 'package:house_sage/screens/search.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/widget/bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  List<Widget> list = [
    const Home(),
    const Search(),
    const Like(),
    const Message(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorUtils.white,
        body: BlocConsumer<BottomItemCubit, BottomItemState>(
          listener: (context, state) {
            if (state is BottomItemIndex) {
              selectedIndex = state.index;
            }
          },
          builder: (context, state) {
            return list[selectedIndex];
          },
        ),
        bottomNavigationBar: BottomBarWidget(
          selectedIndex: selectedIndex,
        ));
  }
}
