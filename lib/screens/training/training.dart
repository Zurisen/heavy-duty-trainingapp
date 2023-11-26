import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heavydutyapp/screens/training/training_exercise.dart';
import 'package:heavydutyapp/shared/editable_title.dart';
import 'package:heavydutyapp/shared/utils.dart';

class TrainingScreen extends StatefulWidget {
  const TrainingScreen({super.key});

  @override
  State<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends State<TrainingScreen> {
  final ScrollController _scrollController = ScrollController();
  List<Widget> exercises = [];

  // State Controllers
  void _addExercise() {
    setState(() {
      // TODO: this should call the Choose Exercise page
      exercises.add(TrainingExercise(trainingExerciseName: "Some exercise"));
    });
    _scrollToBottom();
  }

  // Overrides Controllers
  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  // Overrides
  @override
  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
          actions: <Widget>[
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              // action on button press
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: 
          ActionButton(
            action: () => print("Workout Finished"),
            text: "Finish Workout" ,
            color: Colors.orangeAccent,
            icon: FontAwesomeIcons.star,
            height: 10,
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            EditableTitle(),
            ...exercises,
            Center(
              child: TextButton(
                onPressed: _addExercise,
                child: Text('Add Exercise',
                style: TextStyle(color: Colors.orangeAccent))
              ),
            ),
            SizedBox(height: 200,),
          ],
        ),
      ),
    );
  }
}
