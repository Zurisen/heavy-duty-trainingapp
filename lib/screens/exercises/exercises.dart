import 'package:flutter/material.dart';
import 'package:heavydutyapp/shared/bottom_nav.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Exercises screen'),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}