import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heavydutyapp/screens/training/training_set.dart';
import 'package:heavydutyapp/shared/utils.dart';

class TrainingExercise extends StatelessWidget {
  const TrainingExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionHeaderWithDotsMenu(buttonText: "Some Exercise"),
        TrainingSet(setNumber: 1, cloudData: "25x3")
      ],
    ); 
  }
}