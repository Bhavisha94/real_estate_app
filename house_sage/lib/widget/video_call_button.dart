import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';

class VideoCallButtons extends StatelessWidget {
  const VideoCallButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 211,
      decoration: BoxDecoration(
          color: ColorUtils.blackShade.withOpacity(.42),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '03:25 mins',
            style: textStyle.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: ColorUtils.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: ColorUtils.white.withOpacity(.2),
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: ColorUtils.white.withOpacity(.15), width: 1)),
                child: Center(
                  child: SvgPicture.asset('assets/images/mute.svg'),
                ),
              ),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .05),
              InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: ColorUtils.otherRed,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/images/end_call.svg'),
                  ),
                ),
              ),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .05),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: ColorUtils.white.withOpacity(.2),
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: ColorUtils.white.withOpacity(.15), width: 1)),
                child: Center(
                  child: SvgPicture.asset('assets/images/end_video.svg'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
