import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';

class Increment extends StatelessWidget {
  final VoidCallback? onCallBack;
  const Increment({super.key, this.onCallBack});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCallBack,
      child: Container(
        width: 24,
        height: 24,
        decoration:
            BoxDecoration(color: ColorUtils.mainColor, shape: BoxShape.circle),
        child: Center(
          child: Icon(
            Icons.add,
            size: 17,
            color: ColorUtils.white,
          ),
        ),
      ),
    );
  }
}
