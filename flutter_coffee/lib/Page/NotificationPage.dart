import 'package:flutter/material.dart';
import 'package:flutter_coffee/Widget/enumMenu.dart';

import '../Widget/CustomNavBar.dart';

class Notifications extends StatelessWidget {
  static String routeName = "notifications";
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 25,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              const Text("We can do it better ,",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const Text("when we build it together",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              const Expanded(flex: 2, child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Dev-",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.red),
                    ),
                    Text(
                      "Up's",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.lightBlue),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: CustomNavBar(
          selectedMenu: MenuState.notifications,
        ),
      ),
    );
  }
}
