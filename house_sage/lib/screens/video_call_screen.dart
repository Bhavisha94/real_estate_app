import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/widget/video_call_button.dart';

const appId = "<-- Insert App Id -->";
const token = "<-- Insert Token -->";
const channel = "<-- Insert Channel Name -->";

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/call.png',
                fit: BoxFit.fill,
              ),
            ),
            const Positioned(bottom: 0, child: VideoCallButtons()),
            Positioned(
                right: 20,
                top: 50,
                child: Stack(
                  children: [
                    const SizedBox(
                      width: 97,
                      height: 122,
                    ),
                    Container(
                      width: 96,
                      height: 121,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/remote.png'),
                              fit: BoxFit.fill)),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorUtils.mainColor),
                        child: Center(
                            child:
                                SvgPicture.asset('assets/images/revert.svg')),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
