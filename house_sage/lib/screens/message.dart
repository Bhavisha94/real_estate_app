import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/chat_screen.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/textfield.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorUtils.white,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Column(
          children: [
            AppBarWidget.appBar(title: 'Message', context: context),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            SizedBox(
                width: MediaQuery.of(context).size.width * .9,
                child: TextFieldWidget(
                  hintText: 'Search..',
                  obsecure: false,
                  prefix: Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13),
                    child: SvgPicture.asset(
                      'assets/images/search.svg',
                    ),
                  ),
                  suffix: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      child:
                          SvgPicture.asset('assets/images/search_suffix.svg')),
                )),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ChatScreen())),
              leading: Stack(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat_1.png'),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 3,
                    right: 1,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorUtils.white, width: 1),
                          shape: BoxShape.circle,
                          color: ColorUtils.greenActive),
                    ),
                  )
                ],
              ),
              title: Text(
                'Emon Gupta Jibon',
                style: textStyle.copyWith(
                    color: ColorUtils.contentPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Thanks for contacting me!',
                style: textStyle.copyWith(
                    color: ColorUtils.contentSecondary, fontSize: 12),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    '15:23',
                    style: textStyle.copyWith(
                        fontSize: 12, color: ColorUtils.contentTertiary),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: ColorUtils.mainColor, shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        '2',
                        style: textStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: ColorUtils.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ChatScreen())),
              leading: Stack(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat_2.png'),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 3,
                    right: 1,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorUtils.white, width: 1),
                          shape: BoxShape.circle,
                          color: ColorUtils.greenActive),
                    ),
                  )
                ],
              ),
              title: Text(
                'Tilricon Coza',
                style: textStyle.copyWith(
                    color: ColorUtils.contentPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'How much does it cost?',
                style: textStyle.copyWith(
                    color: ColorUtils.contentSecondary, fontSize: 12),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    'Yesterday',
                    style: textStyle.copyWith(
                        fontSize: 12, color: ColorUtils.contentTertiary),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  SvgPicture.asset('assets/images/send.svg')
                ],
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ChatScreen())),
              leading: Stack(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/chat_3.png'),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    bottom: 3,
                    right: 1,
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorUtils.white, width: 1),
                          shape: BoxShape.circle,
                          color: ColorUtils.greenActive),
                    ),
                  )
                ],
              ),
              title: Text(
                'Robin Hons',
                style: textStyle.copyWith(
                    color: ColorUtils.contentPrimary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'How much does it cost?',
                style: textStyle.copyWith(
                    color: ColorUtils.contentSecondary, fontSize: 12),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  Text(
                    '11/10/2021',
                    style: textStyle.copyWith(
                        fontSize: 12, color: ColorUtils.contentTertiary),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .01),
                  SvgPicture.asset('assets/images/read.svg')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
