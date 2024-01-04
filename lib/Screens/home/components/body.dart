import 'package:aspen_travel_app/Utils/hex_color.dart';
import 'package:aspen_travel_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'category.dart';
import 'header.dart';
import 'popular.dart';
import 'search_bar.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      child: Container(
          padding: EdgeInsets.only(
            left: size.width * 0.03,
            right: size.width * 0.03,
          ),
          child: Column(
            children: <Widget>[
              Header(),
              SizedBox(
                height: size.height * 0.04,
              ),
              SearchBar(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Category(),
              SizedBox(
                height: size.height * 0.04,
              ),
              Popular()
            ],
          )),
    );
  }
}
