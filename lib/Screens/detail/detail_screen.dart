import 'package:aspen_travel_app/Utils/hex_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/detail_image.dart';
import 'components/facility.dart';
import 'components/review.dart';

class DetaiScreen extends StatelessWidget {
  const DetaiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoPageScaffold(
      child: Container(
        padding: EdgeInsets.only(
          left: size.width * 0.03,
          right: size.width * 0.03,
          top: size.width * 0.01,
        ),
        child: Column(children: <Widget>[
          DetailImage(),
          SizedBox(height: size.height * 0.03),
          Review(),
          SizedBox(height: size.height * 0.03),
          Facility(),
          SizedBox(height: size.height * 0.03),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Price",
                        style: TextStyle(
                            fontFamily: "Product Sans",
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                      Text("\$199",
                          style: GoogleFonts.montserrat(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: HexColor("2DD7A4"))),
                    ]),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: size.width * 0.2,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.activeBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    "Book now",
                    style: TextStyle(
                        fontFamily: "Product Sans",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: CupertinoColors.white),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
