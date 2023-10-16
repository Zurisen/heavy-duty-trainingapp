import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.dumbbell,
            size: 20,
          )
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.plus,
            size: 20,
          )
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.noteSticky,
            size: 20,
          )
        )
      ],
      fixedColor: Colors.deepPurple[200],
      onTap: (int idx) {
        switch (idx) {
          case 0:
            Navigator.pushNamed(context, '/exercises');
            break;
          case 1:
            Navigator.pushNamed(context, '/');
            break;
          case 2:
            Navigator.pushNamed(context, '/workouts');
        }
      },
    );
  }
}