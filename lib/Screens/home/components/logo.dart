import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.08),
      child: const Text(
        "Aspen",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Hiatus',
            fontSize: 116,
            color: CupertinoColors.white),
      ),
    );
  }
}
