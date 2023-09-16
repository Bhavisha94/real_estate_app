import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';

class Decrement extends StatelessWidget {
  final VoidCallback? onCallBack;
  const Decrement({super.key, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            color: ColorUtils.grayButtonShade, shape: BoxShape.circle),
        child: Center(
          child: Icon(
            Icons.remove,
            size: 17,
            color: ColorUtils.white,
          ),
        ),
      ),
    );
  }
}
