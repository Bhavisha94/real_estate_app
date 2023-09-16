import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/audio_call.dart';
import 'package:house_sage/screens/video_call_screen.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/list.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/back_button.dart';
import 'package:house_sage/widget/icon_button.dart';
import 'package:house_sage/widget/textfield.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar: AppBar(
        backgroundColor: ColorUtils.white,
        leading: const Padding(
          padding: EdgeInsets.all(7.0),
          child: BackButtonWidget(),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Emon Gupta',
              style: textStyle.copyWith(
                  color: ColorUtils.contentPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'Online',
              style: textStyle.copyWith(
                color: ColorUtils.greenActive,
                fontSize: 12,
              ),
            )
          ],
        ),
        actions: [
          IconButtonWidget(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VideoCallScreen()));
              },
              image: 'video_call'),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .025),
          IconButtonWidget(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AudioCall()));
              },
              image: 'audio_call'),
          SizeUtils.horizontalSpacing(
              width: MediaQuery.of(context).size.width * .025),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: chatList.length,
            itemBuilder: (context, index) {
              return chatMessageTile(
                  chatList[index].message, chatList[index].isSender);
            },
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .7,
                      child: TextFieldWidget(
                        hintText: 'Write a reply...',
                        obsecure: false,
                        prefix: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorUtils.hintTextColor),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: ColorUtils.white,
                              ),
                            ),
                          ),
                        ),
                        suffix:
                            SvgPicture.asset('assets/images/camera_fill.svg'),
                      )),
                  SvgPicture.asset('assets/images/send_btn.svg')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  chatMessageTile(String messge, bool isSender) {
    return Align(
        alignment: isSender ? Alignment.topRight : Alignment.topLeft,
        child: Container(
          decoration: BoxDecoration(
              color: isSender ? ColorUtils.mainColor : ColorUtils.primary50,
              borderRadius: isSender
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))
                  : const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          padding: const EdgeInsets.all(15),
          child: Text(
            messge,
            style: textStyle.copyWith(
                color:
                    isSender ? ColorUtils.white : ColorUtils.contentSecondary),
          ),
        ));
  }
}
