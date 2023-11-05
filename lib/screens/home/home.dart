import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heavydutyapp/screens/exercises/exercises.dart';
import 'package:heavydutyapp/screens/home/main_home.dart';
import 'package:heavydutyapp/screens/login/login.dart';
import 'package:heavydutyapp/screens/profile/profile.dart';
import 'package:heavydutyapp/screens/workouts/workouts.dart';
import 'package:heavydutyapp/services/auth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading');
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text('Firebase initialization error: ${snapshot.error}'),
            ),
          );
        } else if (snapshot.hasData) {
          return MainHomeScreen();
        } else {
          return LoginScreen();
        }
      },
    );
  }

}