import 'package:flutter/material.dart';

class EditableTitle extends StatefulWidget {
  const EditableTitle({Key? key}) : super(key: key);

  @override
  _EditableTitleState createState() => _EditableTitleState();
}

class _EditableTitleState extends State<EditableTitle> {
  bool _isEditing = false;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isEditing = true;
        });
      },
      child: 
        Align(
        alignment: Alignment.centerLeft,
        child: 
          Padding(
            padding: const EdgeInsets.all(10),
            child: _isEditing
                ? TextField(
                    controller: _controller,
                    onSubmitted: (newValue) {
                      setState(() {
                        _isEditing = false;
                      });
                    },
                    autofocus: true,
                  )
                : Text(_controller.text.isEmpty ? 'Workout Name' : _controller.text, 
                style: TextStyle(
                    fontSize: 24,
                  ),
                ),
          ),
      )

    );
  }
}

