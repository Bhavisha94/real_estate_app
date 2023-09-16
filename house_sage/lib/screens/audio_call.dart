import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/video_call_button.dart';

class AudioCall extends StatefulWidget {
  const AudioCall({super.key});

  @override
  State<AudioCall> createState() => _AudioCallState();
}

class _AudioCallState extends State<AudioCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/audio_bg.png'),
                      fit: BoxFit.fill)),
            ),
            const Positioned(
              bottom: 0,
              child: VideoCallButtons(),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 192,
                    height: 192,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: ColorUtils.purple.withOpacity(.1)),
                    child: Center(
                      child: Container(
                        width: 156,
                        height: 156,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                ColorUtils.purpleShadeLight.withOpacity(.15)),
                        child: Center(
                          child: Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: ColorUtils.white, width: 5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/audio_call.png'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Text(
                    'Kathryn Cooper',
                    style: textStyle.copyWith(
                        color: ColorUtils.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 26),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Text(
                    '03:25 mins',
                    style: textStyle.copyWith(color: ColorUtils.white),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .1),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
