import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';

class PastTour extends StatefulWidget {
  const PastTour({super.key});

  @override
  State<PastTour> createState() => _PastTourState();
}

class _PastTourState extends State<PastTour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBarWidget.backArrowAppBar(title: 'Past Tour', context: context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ColorUtils.primary50),
                  color: ColorUtils.bgPrimary),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mon, Apr 4, 10:00 AM to 10:45 AM',
                    style: textStyle.copyWith(color: ColorUtils.contentPrimary),
                  ),
                  SizeUtils.verticalSpacing(height: 05),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/complete.svg'),
                      SizeUtils.horizontalSpacing(width: 05),
                      Text(
                        'Complete',
                        style: textStyle.copyWith(
                            fontSize: 12, color: ColorUtils.green),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/tour1.png',
                          ),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mighty Cinco Family',
                        style: textStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Price',
                        style: textStyle.copyWith(
                            fontSize: 12, color: ColorUtils.contentTertiary),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(height: 05),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/location_small.svg'),
                      SizeUtils.horizontalSpacing(width: 5),
                      Text(
                        'Jakarta, Indonesia',
                        style: textStyle.copyWith(
                            fontSize: 12, color: ColorUtils.contentSecondary),
                      ),
                      const Spacer(),
                      Text(
                        '\$436',
                        style: textStyle.copyWith(
                            color: ColorUtils.mainColor,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ColorUtils.primary50),
                  color: ColorUtils.bgPrimary),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mon, Apr 4, 10:00 AM to 10:45 AM',
                    style: textStyle.copyWith(color: ColorUtils.contentPrimary),
                  ),
                  SizeUtils.verticalSpacing(height: 05),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/cancel.svg'),
                      SizeUtils.horizontalSpacing(width: 05),
                      Text(
                        'Canceled',
                        style: textStyle.copyWith(
                            fontSize: 12, color: ColorUtils.marun),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/tour2.png',
                          ),
                          fit: BoxFit.fill,
                        )),
                  ),
                  SizeUtils.verticalSpacing(
                      height: MediaQuery.of(context).size.height * .015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mighty Cinco Family',
                        style: textStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Price',
                        style: textStyle.copyWith(
                            fontSize: 12, color: ColorUtils.contentTertiary),
                      )
                    ],
                  ),
                  SizeUtils.verticalSpacing(height: 05),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/location_small.svg'),
                      SizeUtils.horizontalSpacing(width: 5),
                      Text(
                        'Jakarta, Indonesia',
                        style: textStyle.copyWith(
                            fontSize: 12, color: ColorUtils.contentSecondary),
                      ),
                      const Spacer(),
                      Text(
                        '\$436',
                        style: textStyle.copyWith(
                            color: ColorUtils.mainColor,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
