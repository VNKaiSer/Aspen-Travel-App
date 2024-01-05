import 'package:aspen_travel_app/Utils/hex_color.dart';
import 'package:flutter/cupertino.dart';

import 'package:google_fonts/google_fonts.dart';

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
                Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Recommended",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, fontWeight: FontWeight.w700)),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.5,
                              height: size.height * 0.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: HexColor("F4F4F4")),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topCenter,
                                    padding: EdgeInsets.all(size.width * 0.02),
                                    width: size.width * 0.48,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/Explore_Aspen.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      child: Text("Explore Aspen",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700)))
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ))
              ],
            )),
      ),
    );
  }
}
