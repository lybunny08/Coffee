import 'package:clean_calendar/clean_calendar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffee/Widget/quotes.dart';
import 'package:flutter_coffee/Widget/size_inset.dart';

import 'border_radius.dart';
import 'colors.dart';

class CalendarWidget extends StatefulWidget {
  final Size size;

  const CalendarWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  bool working = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(radiusWidget),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 15,
            ),
            child: CleanCalendar(
              datePickerCalendarView: DatePickerCalendarView.weekView,
              startWeekday: WeekDay.monday,
              currentDateProperties: DatesProperties(
                datesDecoration: DatesDecoration(
                  datesBackgroundColor: tertioColor,
                  datesTextColor: whiteColor,
                  datesBorderColor: darkPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
