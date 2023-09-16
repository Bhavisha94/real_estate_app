import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class OtpTextField extends StatelessWidget {
  final TextEditingController? controller;
  const OtpTextField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 55,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controller,
        textAlign: TextAlign.center,
        onChanged: (p0) {
          if (p0.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
            fillColor: ColorUtils.textfieldBg,
            filled: true,
            hintText: '-',
            hintStyle: hineTextStyle.copyWith(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: ColorUtils.mainColor))),
      ),
    );
  }
}
