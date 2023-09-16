import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';

class CheckboxWidget extends StatelessWidget {
  final bool checkValue;
  final Function(bool?)? onChanged;
  const CheckboxWidget({super.key, required this.checkValue, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
          color: checkValue ? ColorUtils.mainColor : ColorUtils.primary50,
          borderRadius: BorderRadius.circular(8)),
      child: Checkbox(
          side: BorderSide.none,
          value: checkValue,
          activeColor: Colors.transparent,
          checkColor: ColorUtils.white,
          onChanged: onChanged),
    );
  }
}
