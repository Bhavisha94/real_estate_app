import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/contact_button.dart';

class BuyAgent extends StatelessWidget {
  const BuyAgent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 228,
      decoration: BoxDecoration(
          color: ColorUtils.bgPrimary,
          border: Border.all(color: ColorUtils.primary50)),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/person.png'),
                        fit: BoxFit.fill)),
              ),
              SizeUtils.horizontalSpacing(
                  width: MediaQuery.of(context).size.width * .025),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mahmodul Hasan',
                    style: textStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Ui Ux & Visual Designer',
                    style:
                        textStyle.copyWith(color: ColorUtils.contentSecondary),
                  )
                ],
              ),
            ],
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ContactButton(image: 'inbox', text: 'Message', width: 140),
              ContactButton(image: 'phone', text: 'Phone', width: 140)
            ],
          ),
          const Spacer(),
          ContactButton(
              image: 'ask',
              text: 'Ask a question',
              width: MediaQuery.of(context).size.width)
        ],
      ),
    );
  }
}
