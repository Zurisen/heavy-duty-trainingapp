import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heavydutyapp/shared/utils.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              child: NavigationButton(
                icon: FontAwesomeIcons.plus,
                text: 'New Workout',
                navigatorDir: '/training',
                color: Colors.white38,
                height: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}