import 'package:flutter/material.dart';
import 'package:flutter_coffee/Page/NotificationPage.dart';
import 'package:flutter_coffee/Page/ShopPage.dart';
import 'package:flutter_coffee/Page/home_page.dart';
import 'package:flutter_coffee/Page/profil.dart';
import '../../Mediaquery.dart';
import 'enumMenu.dart';

class CustomNavBar extends StatelessWidget {
  CustomNavBar({super.key, required this.selectedMenu});
  final CustomSize _size = CustomSize();
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: _size.height(context) / 8,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.orange[100],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, HomePage.routName),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 11),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              width: _size.width(context) * .1,
                              height: _size.height(context) * .08,
                              decoration: BoxDecoration(
                                  color: MenuState.home == selectedMenu
                                      ? Colors.black
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(17),
                                      topLeft: Radius.circular(17))),
                              child: Image.asset(
                                "image/home(1).png",
                                width: 30,
                                height: 30,
                                color: MenuState.home == selectedMenu
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, Shop.routeName),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              width: _size.width(context) * .1,
                              height: _size.height(context) * .08,
                              decoration: BoxDecoration(
                                  color: MenuState.shop == selectedMenu
                                      ? Colors.black
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(17),
                                      topLeft: Radius.circular(17))),
                              child: Image.asset(
                                "image/shopping-cart.png",
                                width: 30,
                                height: 30,
                                color: MenuState.shop == selectedMenu
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, Notifications.routeName),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              width: _size.width(context) * .1,
                              height: _size.height(context) * .08,
                              decoration: BoxDecoration(
                                  color: MenuState.notifications == selectedMenu
                                      ? Colors.black
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(17),
                                      topLeft: Radius.circular(17))),
                              child: Image.asset(
                                "image/bell.png",
                                width: 30,
                                height: 30,
                                color: MenuState.notifications == selectedMenu
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, Profil.routeName),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              width: _size.width(context) * .1,
                              height: _size.height(context) * .08,
                              decoration: BoxDecoration(
                                  color: MenuState.profil == selectedMenu
                                      ? Colors.black
                                      : Colors.transparent,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(17),
                                      topLeft: Radius.circular(17))),
                              child: Image.asset(
                                "image/avatar.png",
                                width: 30,
                                height: 30,
                                color: MenuState.profil == selectedMenu
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
