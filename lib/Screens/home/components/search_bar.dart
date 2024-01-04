import 'package:aspen_travel_app/Utils/hex_color.dart';
import 'package:flutter/cupertino.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.centerLeft,
        height: size.height * 0.05,
        child: Expanded(
          child: CupertinoTextField(
            padding: const EdgeInsets.symmetric(vertical: 10.0
                // bottom: size.height * 0.02,
                ),
            placeholder: "Find things to do",
            placeholderStyle: TextStyle(
              fontFamily: 'ProductSans',
              fontSize: 13,
              color: HexColor("B8B8B8"),
            ),
            prefix: Padding(
              padding: EdgeInsets.all(size.width * 0.02),
              child: Icon(
                CupertinoIcons.search,
                color: HexColor("B8B8B8"),
              ),
            ),
            decoration: BoxDecoration(
                color: HexColor("F3F8FE"),
                borderRadius: BorderRadius.circular(20)),
          ),
        ));
  }
}
