import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heavydutyapp/screens/exercises/exercises.dart';
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
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState(){
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }

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
          return Home();
        } else {
          return LoginScreen();
        }
      },
    );
  }

  StreamBuilder<User?> Home() {
    return StreamBuilder(
    stream: AuthService().userStream,
    builder: (context, snapshot) {
      return Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              ExercisesScreen(),
              ProfileScreen(),
              WorkoutsScreen()
            ],
          )
        ),
  
        
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orangeAccent,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Exercises',
              icon: Icon(
                FontAwesomeIcons.dumbbell,
                size: 20,
              )
            ),
            BottomNavigationBarItem(
              label: 'Train',
              icon: Icon(
                FontAwesomeIcons.plus,
                size: 20,
              )
            ),
            BottomNavigationBarItem(
              label: 'Templates',
              icon: Icon(
                FontAwesomeIcons.noteSticky,
                size: 20,
              )
            )
          ],
          onTap: (int idx) {
            _pageController.jumpToPage(idx);
          },
        ),
      );
    }
  );
  }
}