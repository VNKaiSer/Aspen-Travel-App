import 'package:aspen_travel_app/Screens/home/home_screen.dart';
import 'package:aspen_travel_app/constants.dart';
import 'package:flutter/cupertino.dart';

class ButtonExplore extends StatelessWidget {
  const ButtonExplore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoButton(
        onPressed: () {
          Navigator.push(context, CupertinoPageRoute(builder: (context) {
            return const HomeScreen();
          }));
        },
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.065,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13), color: primaryColor),
          child: const Text("Explore",
              style: TextStyle(
                color: CupertinoColors.white,
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.w700,
              )),
        ));
  }
}
