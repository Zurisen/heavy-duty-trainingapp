import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heavydutyapp/shared/utils.dart';

class TrainingExercise extends StatelessWidget {
  const TrainingExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionHeaderWithDotsMenu(text: "Some Exercise", color: Colors.transparent)

      ],
    ); 
  }
}