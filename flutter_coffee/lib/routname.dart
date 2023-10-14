import 'package:flutter/material.dart';
import 'package:flutter_coffee/Page/NotificationPage.dart';
import 'package:flutter_coffee/Page/ShopPage.dart';
import 'package:flutter_coffee/Page/home_page.dart';
import 'package:flutter_coffee/Page/profil.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> route = {
  HomePage.routName: (context) => HomePage(),
  Shop.routeName: (context) => Shop(),
  Profil.routeName: (context) => Profil(),
  Notifications.routeName: (context) => Notifications(),
};
