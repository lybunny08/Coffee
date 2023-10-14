import 'package:flutter/material.dart';
import 'package:flutter_coffee/coffeproduct/ActiveSugar.dart';
import 'package:flutter_coffee/coffeproduct/product.dart';

import '../Mediaquery.dart';
import 'ActiveIce.dart';

class DetailsScreen extends StatelessWidget {
  final CustomSize _size = CustomSize();
  DetailsScreen({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: _size.width(context),
            height: _size.height(context),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: _size.width(context),
                      height: _size.height(context) / 1.71,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 30,
                                  color: Colors.white,
                                )),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(
                              Icons.favorite_border,
                              size: 30,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _size.height(context) * .018,
                ),
                Text(
                  product.title,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Order Custommizable",
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      const Text(
                        "Rating : ",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          product.rate,
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _size.height(context) * .018,
                ),
                const Text(
                  "Sugar Levels :",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ActiveSugar(),
                ),
                SizedBox(
                  height: _size.height(context) * .018,
                ),
                const Text(
                  "Ice Levels :",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ActiveIce(),
                ),
                SizedBox(
                  height: _size.height(context) * .018,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: Column(
                          children: [
                            const Text(
                              "Price",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromRGBO(255, 224, 178, 1)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    "Ar",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.orange[100]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      "${product.price}",
                                      style: const TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(10),
                          onTap: () {},
                          child: Container(
                            width: 140,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.orange[100]),
                            child: const Center(
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
