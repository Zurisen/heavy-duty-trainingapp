import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heavydutyapp/screens/training/training_exercise.dart';
import 'package:heavydutyapp/shared/utils.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white12,
      child: Column(
        children: <Widget>[
          AppBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: SizedBox(
              width: double.maxFinite,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Some Workout',
                ),
              ),
            )
          ),
          TrainingExercise()
          ]
        ),
    );
  }
}