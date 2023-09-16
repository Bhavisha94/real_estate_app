import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class Button extends StatelessWidget {
  final double width;
  final String text;
  final VoidCallback? onCallBack;
  const Button(
      {super.key, required this.width, required this.text, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: width,
        //height: 48,
        height: MediaQuery.of(context).size.height * .055,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(56),
            color: ColorUtils.mainColor),
        child: Center(
            child: Text(
          text,
          style: textStyle.copyWith(color: ColorUtils.white),
        )),
      ),
    );
  }
}
