import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: CupertinoColors.systemBlue,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Home.svg"),
            // label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Ticket.svg"),
            // label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Heart_nav.svg"),
            // label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/Profile.svg"),
            // label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return const Body();
      },
    );
  }
}
