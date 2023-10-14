import 'package:flutter/material.dart';
import 'package:flutter_coffee/Mediaquery.dart';
import 'package:flutter_coffee/Widget/enumMenu.dart';

import '../Widget/CustomNavBar.dart';
import '../Widget/calendar.dart';
import '../Widget/day_lines_widget.dart';
import '../Widget/quotes.dart';

class Shop extends StatefulWidget {
  static String routeName = "shop";
  Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final CustomSize _size = CustomSize();
  String quote = "";
  String owner = "";
  bool working = false;

  @override
  void initState() {
    super.initState();
    fetchQuote();
  }

  void fetchQuote() async {
    setState(() {
      working = true;
      quote = owner = "";
    });

    var quoteData = await CalendarLogic.getQuote();

    setState(() {
      quote = quoteData['quote']!;
      owner = quoteData['owner']!;
      working = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Happy reading \nHarvey",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    quote,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black12,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    owner,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black12,
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: width,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: CalendarWidget(
                            size: Size(
                              width,
                              height,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: CustomNavBar(
          selectedMenu: MenuState.shop,
        ),
      ),
    );
  }
}
