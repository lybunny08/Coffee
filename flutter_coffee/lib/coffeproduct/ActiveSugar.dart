import 'package:flutter/material.dart';

import '../Mediaquery.dart';

class ActiveSugar extends StatefulWidget {
  @override
  _ActiveSugarState createState() => _ActiveSugarState();
}

class _ActiveSugarState extends State<ActiveSugar> {
  final CustomSize _size = CustomSize();
  int _selectedIndex = 1;

  List<Widget> _buildContainers() {
    return [
      _buildContainer("No sugar", 0),
      _buildContainer("Less", 1),
      _buildContainer("Normal", 2),
      _buildContainer("Extra", 3),
    ];
  }

  Widget _buildContainer(String label, int index) {
    bool isSelected = _selectedIndex == index;
    Color color = isSelected ? Colors.black : Color.fromRGBO(255, 224, 178, 1);
    Color textColor =
        isSelected ? Color.fromRGBO(255, 224, 178, 1) : Colors.black;
    Border border = isSelected
        ? Border.all(color: Color.fromRGBO(255, 224, 178, 1))
        : Border.all(color: Colors.transparent);

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: _size.width(context) / 4.9,
        height: _size.height(context) / 28,
        decoration: BoxDecoration(
          color: color,
          border: border,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _buildContainers(),
    );
  }
}
