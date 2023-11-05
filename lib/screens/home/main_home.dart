import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heavydutyapp/screens/exercises/exercises.dart';
import 'package:heavydutyapp/screens/profile/profile.dart';
import 'package:heavydutyapp/screens/templates/templates.dart';
import 'package:heavydutyapp/screens/workouts/workouts.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
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
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          children: const [
            ExercisesScreen(),
            WorkoutsScreen(),
            TemplatesScreen()
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
}