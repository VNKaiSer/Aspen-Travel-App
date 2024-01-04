import 'package:aspen_travel_app/Utils/hex_color.dart';
import 'package:aspen_travel_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      TopPopularTitle(),
      SizedBox(
        height: size.height * 0.02,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              PopularCard(
                // imageUrl: "assets/images/home_screen.png",
                rate: "4.1",
                location: "Alley Palace",
              ),
              PopularCard(
                imageUrl: "assets/images/Coeurdes_Alpes.png",
                rate: "4.5",
                location: "Coeurdes Alpes",
              )
            ]),
      ),
    ]);
  }
}

class PopularCard extends StatelessWidget {
  final String imageUrl;
  final String rate;
  final String location;
  const PopularCard({
    super.key,
    this.imageUrl = "assets/images/alley_palace.png",
    required this.rate,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: size.width * 0.05),
        width: size.width * 0.6,
        height: size.height * 0.35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(imageUrl), fit: BoxFit.cover)),
      ),
      Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: size.width * 0.6,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        child: TextPlacePopular(
                          text: location,
                        ),
                        decoration: BoxDecoration(
                          color: HexColor("4D5652"),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            color: HexColor("4D5652"),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(children: [
                            SvgPicture.asset(
                              "assets/icons/star.svg",
                            ),
                            TextPlacePopular(
                              text: rate,
                            )
                          ])),
                    ],
                  ),
                  SvgPicture.asset("assets/icons/heart.svg")
                ]),
          ))
    ]);
  }
}

class TextPlacePopular extends StatelessWidget {
  final String text;
  const TextPlacePopular({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontFamily: 'ProductSans',
            fontSize: 14,
            color: CupertinoColors.white));
  }
}

class TopPopularTitle extends StatelessWidget {
  const TopPopularTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Text("Popular",
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 18,
                fontWeight: FontWeight.w800,
              )),
          Text(
            "See all",
            style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: primaryColor),
          )
        ]);
  }
}
