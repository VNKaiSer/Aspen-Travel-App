import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Coeurdes Alpes",
                  style: GoogleFonts.montserrat(
                      fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: size.height * 0.01),
                Row(
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/star_review.svg"),
                    Text(" 4.5 (355 Reviews)",
                        style: GoogleFonts.montserrat(fontSize: 12)),
                  ],
                )
              ],
            ),
            Text(
              "Show map",
              style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: CupertinoColors.activeBlue,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.01),
        Text(
          "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....",
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'ProductSans',
          ),
        ),
        SizedBox(height: size.height * 0.01),
        Text("Read more",
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'ProductSans',
              color: CupertinoColors.activeBlue,
            ))
      ],
    );
  }
}
