import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heavydutyapp/screens/training/training_set.dart';
import 'package:heavydutyapp/shared/utils.dart';

class TrainingExercise extends StatefulWidget {
  final String trainingExerciseName;

  const TrainingExercise({
    Key? key,
    required this.trainingExerciseName,
  }) : super(key: key);

  @override
  State<TrainingExercise> createState() => _TrainingExerciseState();
}

class _TrainingExerciseState extends State<TrainingExercise> {
  // List to hold TrainingExercise widgets
  List<Widget> traininSets = [];

  @override
  void initState() {
    super.initState();
    // TODO: read initial reading sets if its part of a template
    
    // Initialize with one TrainingExercise if no template
    _addTrainingSet();
  }

  void _addTrainingSet() {
    setState(() {
      int newSetNumber = traininSets.length + 1;
      traininSets.add(_createTrainingSet(newSetNumber));
    });
  }

  void _removeTrainingSet(int index) {
    setState(() {
      traininSets.removeAt(index);
      _updateSetNumbers();
    });
  }

  void _updateSetNumbers() {
    for (int i = 0; i < traininSets.length; i++){
      TrainingSet set = traininSets[i] as TrainingSet;
      traininSets[i] = _createTrainingSet(i+1, set.prevSet);
    }
  }

  Widget _createTrainingSet(int setNumber, [String? prevSet]) {
  return TrainingSet(
    // TODO: pass also text inputs initial value (0)
    setNumber: setNumber,
    prevSet: prevSet ?? "25 × 3",
    onRemove: () => _removeTrainingSet(setNumber - 1),
  );
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionHeaderWithDotsMenu(buttonText: widget.trainingExerciseName),
        ...traininSets,
        TextButton(onPressed: _addTrainingSet, 
        child: Text('Add Set',
        style: TextStyle(color: Colors.white54),)
        )
      ],
    );
  }
}