import 'package:aspen_travel_app/Screens/welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Aspen Travel App',
      theme: CupertinoThemeData(
          primaryColor: CupertinoColors.white, brightness: Brightness.light),
      home: WelcomeScreen(),
    );
  }
}
