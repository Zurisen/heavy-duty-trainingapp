import 'package:flutter/material.dart';

class TrainingSet extends StatefulWidget {
  final int setNumber;
  final String cloudData;

  TrainingSet({
    Key? key,
    required this.setNumber,
    required this.cloudData,
  }) : super(key: key);

  @override
  _TrainingSetState createState() => _TrainingSetState();
}

class _TrainingSetState extends State<TrainingSet> {
  late TextEditingController firstInputController;
  late TextEditingController secondInputController;

  @override
  void initState() {
    super.initState();
    firstInputController = TextEditingController();
    secondInputController = TextEditingController();
  }

  @override
  void dispose() {
    firstInputController.dispose();
    secondInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return SizedBox(
        height: 35,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display the set number with margin
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: Text(widget.setNumber.toString()),
            ),
      
            // Display data from the cloud with margin
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: Text(widget.cloudData),
            ),
      
            // First input field with margin
            Flexible(
              flex: 2, // Adjust flex factor as needed
              child: Container(
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: firstInputController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white24,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
      
            // Second input field with margin
            Flexible(
              flex: 2, // Adjust flex factor as needed
              child: Container(
                width: 80,
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: secondInputController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white24,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
      
            // IconButton with a tick icon and margin
            Container(
            width: 40,
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  // Define the action when the button is pressed
                  print('Tick button pressed');
                },
              ),
            ),
          ],
        ),
      );
  }
}

