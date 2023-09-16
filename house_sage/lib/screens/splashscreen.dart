import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/onboarding.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   'assets/images/splash.png',
                  //   width: 97,
                  //   height: 85,
                  // ),
                  SvgPicture.asset('assets/images/splash.svg'),
                  Text(
                    'HouseSage',
                    style: textStyle.copyWith(
                        fontFamily: 'IndieFlower', fontSize: 29),
                  ),
                ],
              ),
            ),
            // Positioned(
            //   bottom: 20,
            // child: SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   child: Center(
            // child: SpinKitCircle(
            //   duration: const Duration(milliseconds: 2000),
            //   itemBuilder: (context, index) {
            //     return Container(
            //       decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(25),
            //           gradient: LinearGradient(colors: [
            //             ColorUtils.gradient1,
            //             ColorUtils.gradient2
            //           ])),
            //     );
            //   },
            //   size: 80,
            // ),
            //         ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  navigate() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => const OnbordingScreen()));
    });
  }
}
