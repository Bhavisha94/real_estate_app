import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_sage/screens/customer_service.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';

class ContactUS extends StatefulWidget {
  const ContactUS({super.key});

  @override
  State<ContactUS> createState() => _ContactUSState();
}

class _ContactUSState extends State<ContactUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.white,
      appBar:
          AppBarWidget.backArrowAppBar(title: 'Contact Us', context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'Contact Us',
              style:
                  textStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Text(
              'Find answer to your problem using this app.',
              style: textStyle.copyWith(color: ColorUtils.contentSecondary),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            contact(
                context,
                'service',
                'Customer Service',
                () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const CustomerService()))),
            contact(context, 'facebook', 'Facebook', () {}),
            contact(context, 'insta', 'Instagram', () {}),
            contact(context, 'website_icon', 'Website', () {}),
            contact(context, 'whatsapp', 'WhatsApp', () {}),
            contact(context, 'twitter', 'Twitter', () {}),
          ],
        ),
      ),
    );
  }

  Widget contact(
      BuildContext context, String image, String text, VoidCallback? onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: ColorUtils.primary50)),
        child: Row(
          children: [
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .035),
            SvgPicture.asset('assets/images/$image.svg'),
            SizeUtils.horizontalSpacing(
                width: MediaQuery.of(context).size.width * .035),
            Text(
              text,
              style:
                  textStyle.copyWith(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
