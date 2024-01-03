import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Caption extends StatelessWidget {
  const Caption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Plan your",
              style: GoogleFonts.montserrat(
                  color: CupertinoColors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w300)),
          Text("Luxurious\nVacation",
              style: GoogleFonts.montserrat(
                  color: CupertinoColors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
