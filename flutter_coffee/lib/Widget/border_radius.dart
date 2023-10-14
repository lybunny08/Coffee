import 'package:flutter/material.dart';
import 'package:flutter_coffee/Widget/size_inset.dart';

BorderRadius topRadius() => BorderRadius.only(
      topLeft: Radius.circular(radiusWidget),
      topRight: Radius.circular(radiusWidget),
    );

BorderRadius bottomRadius() => BorderRadius.only(
      bottomLeft: Radius.circular(radiusWidget),
      bottomRight: Radius.circular(radiusWidget),
    );
