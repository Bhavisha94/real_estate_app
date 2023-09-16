import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/back_button.dart';
import 'package:house_sage/widget/property_screen_point.dart';

class PropertyImageView extends StatefulWidget {
  const PropertyImageView({super.key});

  @override
  State<PropertyImageView> createState() => _PropertyImageViewState();
}

class _PropertyImageViewState extends State<PropertyImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/property_img.png'),
                fit: BoxFit.fill)),
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            const Positioned(
                top: 10, left: 10, child: SafeArea(child: BackButtonWidget())),
            Positioned(
              top: MediaQuery.of(context).size.height * .36,
              left: MediaQuery.of(context).size.width * .1,
              child: Container(
                width: 141,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorUtils.white.withOpacity(.8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 12,
                      height: 12,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: ColorUtils.mainColor, width: 2)),
                    ),
                    SizeUtils.horizontalSpacing(width: 5),
                    Text(
                      'Living room',
                      style: textStyle.copyWith(
                          fontSize: 16,
                          color: ColorUtils.contentPrimary,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * .26,
                right: MediaQuery.of(context).size.width * .2,
                child: const PropertyPointWidget()),
            Positioned(
                top: MediaQuery.of(context).size.height * .54,
                left: MediaQuery.of(context).size.width * .05,
                child: const PropertyPointWidget()),
            Positioned(
                top: MediaQuery.of(context).size.height * .7,
                right: MediaQuery.of(context).size.width * .1,
                child: const PropertyPointWidget()),
            Positioned(
              top: MediaQuery.of(context).size.height * .82,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        // color: ColorUtils.white.withOpacity(.38),
                        image: DecorationImage(
                            image: AssetImage('assets/images/record_btn.png'))),
                    child: Center(
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: ColorUtils.primary50,
                            shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
