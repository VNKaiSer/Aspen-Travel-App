import 'package:flutter/cupertino.dart';

import 'category.dart';
import 'header.dart';
import 'popular.dart';
import 'recommended.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      child: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(
              left: size.width * 0.03,
              right: size.width * 0.03,
            ),
            child: Column(
              children: <Widget>[
                const Header(),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const SearchBar(),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const Category(),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const Popular(),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const Recommended(),
              ],
            )),
      ),
    );
  }
}
