import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizco/routes.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.graduationCap),
          label: 'Topics',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.bolt),
          label: 'About',
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user),
          label: 'Profile',
        ),
      ],
      fixedColor: Colors.deepPurple[200],
      onTap: (int idx) {
        switch (idx) {
          case 0:
            // Navigator.pushNamed(context, AppRoutes.topics.url);
            break;
          case 1:
            Navigator.pushNamed(context, AppRoutes.about.url);
          case 2:
            Navigator.pushNamed(context, AppRoutes.profile.url);
        }
      },
    );
  }
}
