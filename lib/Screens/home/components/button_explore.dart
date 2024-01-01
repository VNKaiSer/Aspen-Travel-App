import 'package:aspen_travel_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonExplore extends StatelessWidget {
  const ButtonExplore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoButton(
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.065,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13), color: primaryColor),
          child: Text(
            "Explore",
            style: GoogleFonts.montserrat(
                color: CupertinoColors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}
