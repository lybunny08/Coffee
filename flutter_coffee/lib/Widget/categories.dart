import 'package:flutter/material.dart';
import 'package:flutter_coffee/Mediaquery.dart';

class Categories extends StatefulWidget {
  Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'All',
    'Latte',
    'Cappuchino',
    'Espresso',
  ];
  final CustomSize _size = CustomSize();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _size.height(context) / 13,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategories(index)),
    );
  }

  Widget buildCategories(int index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categories[index],
                style: TextStyle(
                    color: selectedIndex == index
                        ? Colors.orange[100]
                        : Colors.white,
                    fontSize: 18),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: 2,
                width: 70,
                color: selectedIndex == index
                    ? Colors.orange[100]
                    : Colors.transparent,
              )
            ],
          ),
        ),
      );
}
