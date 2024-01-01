import 'package:flutter/cupertino.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height,
        width: double.infinity,
        child: Stack(children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/home_screen.png'),
                    fit: BoxFit.cover)),
          ),
          child
        ]));
  }
}
