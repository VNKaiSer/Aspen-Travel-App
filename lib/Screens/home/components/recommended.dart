import 'package:aspen_travel_app/Utils/hex_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Recommended",
            style: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w700)),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              const RecommendedCard(
                title: "Explore Aspen",
                imageUrl: "assets/images/Explore_Aspen.png",
                duration: "4N/5D",
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              const RecommendedCard(
                title: "Luxurious Aspen",
                imageUrl: "assets/images/Luxurious_Aspen.png",
                duration: "2N/3D",
              )
            ],
          ),
        ),
      ],
    );
  }
}

class RecommendedCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String duration;
  const RecommendedCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
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
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 5,
                    ),
                    child: Image(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                      width: size.width * 0.5,
                    ),
                  ),
                  Positioned(
                      right: 10,
                      bottom: 45,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 3),
                        decoration: BoxDecoration(
                          color: HexColor("3A544F"),
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: HexColor("FFFFFFFF"), width: 1),
                        ),
                        child: Text(
                          duration,
                          style: GoogleFonts.montserrat(
                              color: CupertinoColors.white, fontSize: 10),
                        ),
                      )),
                  Positioned(
                      bottom: 5,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                          Row(
                            // mainAxisAlignment:
                            //     MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset("assets/icons/trending-up.svg"),
                              SizedBox(
                                width: size.width * 0.02,
                              ),
                              const Text(
                                "Hot Deal ",
                                style: TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
