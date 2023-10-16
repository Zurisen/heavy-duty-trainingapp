import 'package:flutter/material.dart';
import 'package:heavydutyapp/shared/bottom_nav.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Workouts screen'),
      bottomNavigationBar: BottomNavBar(),
    );  }
}