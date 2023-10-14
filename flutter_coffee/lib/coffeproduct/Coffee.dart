import 'package:flutter/material.dart';
import 'package:flutter_coffee/coffeproduct/product.dart';

import '../Mediaquery.dart';

class Coffee extends StatelessWidget {
  final CustomSize _size = CustomSize();
  Coffee({
    required this.product,
    required this.press,
  });
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: press,
        child: Container(
          width: _size.width(context) / 2.5,
          height: _size.height(context) / 3.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.grey[900]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              padding: const EdgeInsets.all(2),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: _size.height(context) / 7,
                    width: _size.width(context),
                    child: AspectRatio(
                      aspectRatio: 1.02,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: ClipRect(
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      product.title,
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  Text(
                    product.description,
                    style: const TextStyle(color: Colors.white54, fontSize: 10),
                  ),
                  Expanded(flex: 1, child: Container()),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Ar",
                        style:
                            TextStyle(color: Colors.orange[100], fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 27),
                        child: Text(
                          "${product.price}",
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          width: _size.height(context) / 30,
                          height: _size.height(context) / 30,
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(7)),
                          child: Image.asset(
                            "image/cart.png",
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
