import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({
    super.key,
    // required this.size,
  });

  // final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: <Widget>[
      Container(
        height: size.height * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage("assets/images/Detail.png"),
              fit: BoxFit.cover,
            )),
      ),
      Positioned(
          top: 10,
          left: 10,
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset("assets/icons/Back.svg"))),
      Positioned(
        bottom: 0,
        right: 10,
        child: SvgPicture.asset("assets/icons/Heart_Large.svg"),
      )
    ]);
  }
}
