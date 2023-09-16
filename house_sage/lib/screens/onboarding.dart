import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/cubit/onboarding/cubit/onboarding_cubit.dart';
import 'package:house_sage/screens/boarding_screen.dart';
import 'package:house_sage/screens/welcome_screen.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int index = 0;
  PageController controller = PageController();
  List<Widget> list = [
    const BoardingScreen1(),
    const BoardingScreen2(),
    const BoardingScreen3()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      body: BlocConsumer<OnboardingCubit, OnboardingState>(
        listener: (context, state) {
          if (state is OnboardingPageIndex) {
            index = state.index;
          }
        },
        builder: (context, state) {
          return SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height,
                  height: 507,
                  child: PageView.builder(
                    itemCount: list.length,
                    controller: controller,
                    onPageChanged: (value) {
                      context.read<OnboardingCubit>().change(value);
                    },
                    itemBuilder: (context, index) {
                      return list[index];
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 395,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/boarding_widget.png'),
                              fit: BoxFit.fill)),
                      child: Column(
                        children: [
                          SizeUtils.verticalSpacing(
                              height: MediaQuery.of(context).size.height * .12),
                          SizedBox(
                            width: 273,
                            child: Text(
                              boardingList[index].title,
                              textAlign: TextAlign.center,
                              style: textStyle.copyWith(
                                  color: ColorUtils.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizeUtils.verticalSpacing(
                              height: MediaQuery.of(context).size.height * .05),
                          SizedBox(
                            width: 270,
                            child: Text(
                              boardingList[index].text,
                              textAlign: TextAlign.center,
                              style: textStyle.copyWith(
                                  fontSize: 13, color: ColorUtils.grayscale70),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              SizeUtils.horizontalSpacing(
                                  width:
                                      MediaQuery.of(context).size.width * .1),
                              InkWell(
                                onTap: () {
                                  if (index == 2) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const WelcomeScreen()));
                                  } else {
                                    controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                  }
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(55),
                                      color: ColorUtils.mainColor),
                                  child: Center(
                                    child: SvgPicture.asset(
                                        'assets/images/arrow.svg'),
                                  ),
                                ),
                              ),
                              SizeUtils.horizontalSpacing(
                                  width:
                                      MediaQuery.of(context).size.width * .03),
                              InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const WelcomeScreen())),
                                child: Text(
                                  'Skip',
                                  style: textStyle.copyWith(
                                      fontFamily: 'PlusJakartaSans',
                                      fontSize: 12,
                                      color: ColorUtils.contentSecondary),
                                ),
                              ),
                              const Spacer(),
                              SmoothPageIndicator(
                                  controller: controller,
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  effect: ExpandingDotsEffect(
                                    dotHeight: 8,
                                    dotWidth: 8,
                                    spacing: 5,
                                    activeDotColor: ColorUtils.mainColor,
                                  )),
                              SizeUtils.horizontalSpacing(
                                  width:
                                      MediaQuery.of(context).size.width * .05),
                            ],
                          ),
                          SizeUtils.verticalSpacing(
                              height: MediaQuery.of(context).size.height * .05),
                        ],
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
