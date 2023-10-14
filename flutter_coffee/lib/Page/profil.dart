import 'package:flutter/material.dart';
import 'package:flutter_coffee/Mediaquery.dart';
import 'package:flutter_coffee/Widget/enumMenu.dart';

import '../Widget/CustomNavBar.dart';

class Profil extends StatelessWidget {
  static String routeName = "profil";
  final CustomSize _size = CustomSize();
  Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Container(
            height: _size.height(context),
            width: _size.width(context),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(150),
                              border: Border.all(color: Colors.white)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(150),
                              child: Image.asset(
                                "image/pdp.jpg",
                                fit: BoxFit.cover,
                              )),
                        ),
                        Positioned(
                          bottom: 6,
                          right: 8,
                          child: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(35),
                                  border: Border.all(color: Colors.white)),
                              child: const Icon(
                                Icons.person_2_sharp,
                                size: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Mamitiana Lydien",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 22),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8),
                                child: Icon(
                                  Icons.emoji_events_rounded,
                                  size: 15,
                                  color: Colors.white54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "mamitiana.hajaniaina@esti.mg",
                            style: TextStyle(fontSize: 17, color: Colors.white54),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(height: _size.height(context) / 15),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: _size.height(context) / 17,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: Colors.white54,
                          size: 30,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Payment History",
                            style: TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height(context) / 60,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: _size.height(context) / 17,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        Image.asset(
                          "image/bell.png",
                          width: 30,
                          height: 30,
                          color: Colors.white54,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Notifications",
                            style: TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height(context) / 60,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: _size.height(context) / 17,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.settings,
                          color: Colors.white54,
                          size: 30,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Settings",
                            style: TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height(context) / 60,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: _size.height(context) / 17,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.more_horiz,
                          color: Colors.white54,
                          size: 30,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "About",
                            style: TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height(context) / 60,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: _size.height(context) / 17,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.privacy_tip,
                          color: Colors.white54,
                          size: 30,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Privacy & Policy",
                            style: TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height(context) / 60,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    height: _size.height(context) / 17,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.more_horiz,
                          color: Colors.white54,
                          size: 30,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Tems and conditions",
                            style: TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                    )),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: _size.height(context) / 17,
                    decoration: BoxDecoration(),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.logout,
                          color: Colors.white54,
                          size: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Logout",
                            style: TextStyle(fontSize: 20, color: Colors.white54),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: _size.height(context) / 200,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomNavBar(
          selectedMenu: MenuState.profil,
        ),
      ),
    );
  }
}
