import 'package:heavydutyapp/screens/exercises/exercises.dart';
import 'package:heavydutyapp/screens/home/home.dart';
import 'package:heavydutyapp/screens/login/login.dart';
import 'package:heavydutyapp/screens/profile/profile.dart';
import 'package:heavydutyapp/screens/training/training.dart';
import 'package:heavydutyapp/screens/workouts/workouts.dart';

var appRoutes = {
  '/login': (context) => const LoginScreen(),
  '/exercises': (context) => const ExercisesScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/workouts': (context) => const WorkoutsScreen(),
  '/training': (context) => const TrainingScreen()
};