import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/size.dart';
import 'package:house_sage/utils/style.dart';
import 'package:house_sage/widget/appbar.dart';
import 'package:house_sage/widget/button.dart';

class CustomerService extends StatefulWidget {
  const CustomerService({super.key});

  @override
  State<CustomerService> createState() => _CustomerServiceState();
}

class _CustomerServiceState extends State<CustomerService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              'How Can We Help You?',
              style: textStyle.copyWith(
                  color: ColorUtils.contentPrimary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .015),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 175,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ColorUtils.contentDisable)),
              padding: const EdgeInsets.all(10),
              child: TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    isDense: true,
                    border:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Type here',
                    hintStyle:
                        textStyle.copyWith(color: ColorUtils.contentTertiary)),
              ),
            ),
            SizeUtils.verticalSpacing(
                height: MediaQuery.of(context).size.height * .1),
            Button(width: MediaQuery.of(context).size.width, text: 'Send Now')
          ],
        ),
      ),
    );
  }
}
