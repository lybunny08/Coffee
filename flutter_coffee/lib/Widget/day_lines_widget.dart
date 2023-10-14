import 'package:flutter/material.dart';
import 'package:flutter_coffee/Widget/parsing.dart';
import 'package:flutter_coffee/Widget/size_inset.dart';

import 'border_radius.dart';
import 'colors.dart';

class DayLinesWidget extends StatelessWidget {
  final Size size;
  const DayLinesWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String hour = addZero(DateTime.now().hour);
    String min = addZero(DateTime.now().minute);
    return Container(
      width: size.width,
      height: size.height,
      margin: const EdgeInsets.only(right: 14),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(radiusWidget),
      ),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: size.width,
                height: 30,
                child: Text(
                  '$hour:$min',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
