import 'package:aspen_travel_app/Utils/hex_color.dart';
import 'package:aspen_travel_app/constants.dart';
import 'package:flutter/cupertino.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryItem(
            text: "Location",
            active: true,
          ),
          CategoryItem(text: "Hotel"),
          CategoryItem(text: "Food"),
          CategoryItem(text: "Adventure"),
          CategoryItem(text: "Shopping"),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String text;
  final bool active;

  const CategoryItem({
    super.key,
    required this.text,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: !active
            ? const BoxDecoration()
            : BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: activeBackgroundColor,
              ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(text,
            style: TextStyle(
              fontFamily: 'ProductSans',
              fontSize: 14,
              fontWeight: active ? FontWeight.bold : FontWeight.normal,
              color: active ? primaryColor : HexColor("B8B8B8"),
            )),
      ),
    );
  }
}
