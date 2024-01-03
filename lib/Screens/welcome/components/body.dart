import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'background.dart';
import 'button_explore.dart';
import 'caption.dart';
import 'logo.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SizedBox(
            height: size.height,
            width: double.infinity,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Logo(),
                SizedBox(height: size.height * 0.48),
                const Caption(),
                SizedBox(height: size.height * 0.01),
                const ButtonExplore()
              ],
            )));
  }
}
