import 'package:flutter/material.dart';

class TrainingSet extends StatefulWidget {
  final int setNumber;
  final String prevSet;
  final VoidCallback onRemove; //Callback for removal

  TrainingSet({
    Key? key,
    required this.setNumber,
    required this.prevSet,
    required this.onRemove,
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
    firstInputController = TextEditingController(); // these should be handled outside this class
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
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: SizedBox(
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
                child: Text(widget.prevSet),
              ),
        
              // First input field with margin
              Flexible(
                flex: 2, // Adjust flex factor as needed
                child: Container(
                  width: 80,
                  height: 30,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70),
                    controller: firstInputController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 25),
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
                  height: 30,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70),
                    controller: secondInputController,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 25),
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
      
              // IconButton with a cross icon and margin
              Container(
              width: 40,
                child: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: widget.onRemove
                ),
              ),
            ],
          ),
        ),
      );
  }
}

