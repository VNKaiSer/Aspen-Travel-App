import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const LogoApp(),
          Container(
              padding: EdgeInsets.only(right: size.width * 0.05),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/location-1.svg",
                  ),
                  const Text(
                    "Aspen, USA",
                    style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                  SvgPicture.asset(
                    "assets/icons/arrow-down.svg",
                  )
                ],
              ))
        ]);
  }
}

class LogoApp extends StatelessWidget {
  const LogoApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // textDirection: TextDirection.ltr,
        children: <Widget>[
          Text(
            "Explore",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
          Text("Aspen",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 32,
              )),
        ],
      ),
    );
  }
}
