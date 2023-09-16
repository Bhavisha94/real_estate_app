import 'package:flutter/material.dart';
import 'package:house_sage/utils/colors.dart';
import 'package:house_sage/utils/style.dart';
// import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // TableCalendar(
        //   locale: 'en_US',
        //   rowHeight: 45,
        //   headerStyle: const HeaderStyle(
        //     formatButtonVisible: false,
        //     titleCentered: true,
        //   ),
        //   calendarStyle: CalendarStyle(
        //       todayDecoration: BoxDecoration(
        //           color: ColorUtils.mainColor,
        //           borderRadius: BorderRadius.circular(8))),
        //   availableGestures: AvailableGestures.all,
        //   firstDay: DateTime.utc(2010),
        //   lastDay: DateTime.utc(2030),
        //   focusedDay: today,
        //   onDaySelected: _onDaySelected,
        //   selectedDayPredicate: (day) {
        //     return isSameDay(day, today);
        //   },
        //   calendarFormat: CalendarFormat.month,
        //   calendarBuilders: CalendarBuilders(
        //     selectedBuilder: (context, day, focusedDay) => Container(
        //         margin: const EdgeInsets.all(6),
        //         decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(8),
        //             color: ColorUtils.mainColor),
        //         child: Center(
        //           child: Text(
        //             day.day.toString(),
        //             style: textStyle.copyWith(color: ColorUtils.white),
        //           ),
        //         )),
        //   ),
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

  _onDaySelected(DateTime day, DateTime focusDay) {
    setState(() {
      today = day;
    });
  }
}
