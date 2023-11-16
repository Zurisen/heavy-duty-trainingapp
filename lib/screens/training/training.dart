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
          AppBar(backgroundColor: Colors.white12,),

          TrainingExercise()
          ]
        ),
    );
  }
}