import 'package:flutter/material.dart';
import 'package:heavydutyapp/shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('HomePage'),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}