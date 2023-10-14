import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_coffee/Mediaquery.dart';
import 'package:flutter_coffee/Page/profil.dart';
import 'package:flutter_coffee/Widget/categories.dart';
import 'package:flutter_coffee/Widget/enumMenu.dart';
import '../Widget/CustomNavBar.dart';
import '../coffeproduct/Coffee.dart';
import '../coffeproduct/WidgetOffres.dart';
import '../coffeproduct/details.dart';
import '../coffeproduct/offre.dart';
import '../coffeproduct/product.dart';

class HomePage extends StatelessWidget {
  static String routName = '/';
  final CustomSize _size = CustomSize();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(7),
                              child: Image.asset(
                                "image/menu(1).png",
                                color: Colors.orange[100],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                              "Starr-Cofee",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.orange[100]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset(
                              "image/coffee-cup.png",
                              width: 40,
                              height: 40,
                              color: Colors.orange[100],
                            ),
                          ),
                          Expanded(flex: 1, child: Container()),
                          InkWell(
                            borderRadius: BorderRadius.circular(70),
                            onTap: () =>
                                Navigator.pushNamed(context, Profil.routeName),
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.white)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(55),
                                  child: Image.asset(
                                    "image/pdp.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: _size.height(context) / 45,
                      ),
                      const Text(
                        "Find what coffee \nyou desire",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(
                        height: _size.height(context) / 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: _size.height(context) / 17,
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Container(
                                    width: _size.width(context) / 1.45,
                                    child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.white),
                                      decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Seach your coffee...",
                                          hintStyle: TextStyle(
                                              fontSize: 19,
                                              color: Colors.black54)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _size.height(context) / 30,
                      ),
                      Categories(),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                                products.length,
                                (index) => Coffee(
                                      product: products[index],
                                      press: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen(
                                                    product: products[index],
                                                  ))),
                                    )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: _size.height(context) / 45,
                      ),
                      const Text(
                        "Offers for you",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(
                        height: _size.height(context) / 50,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            ...List.generate(products.length,
                                (index) => Offre(offres: offres[index])),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomNavBar(
          selectedMenu: MenuState.home,
        ),
      ),
    );
  }
}
