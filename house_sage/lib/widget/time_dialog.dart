import 'package:flutter/material.dart';
// import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';

class TimeDialog extends StatefulWidget {
  const TimeDialog({super.key});

  @override
  State<TimeDialog> createState() => _TimeDialogState();
}

class _TimeDialogState extends State<TimeDialog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .025,
        ),
        // TimePickerSpinner(
        //   is24HourMode: false,
        //   isForce2Digits: true,
        //   highlightedTextStyle: textStyle.copyWith(
        //       fontSize: 18, color: ColorUtils.contentPrimary),
        //   normalTextStyle: textStyle.copyWith(
        //       fontSize: 18, color: ColorUtils.contentDisable),
        //   spacing: 5,
        //   itemHeight: 30,
        //   onTimeChange: (p0) {},
        // ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .025,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel',
                    style: textStyle.copyWith(
                        color: ColorUtils.contentPrimary,
                        fontFamily: 'Popins',
                        fontSize: 14,
                        fontWeight: FontWeight.w600))),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Done',
                    style: textStyle.copyWith(
                        color: ColorUtils.mainColor,
                        fontFamily: 'Popins',
                        fontSize: 14,
                        fontWeight: FontWeight.w600)))
          ],
        )
      ],
    );
  }
}
