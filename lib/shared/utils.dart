import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationButton extends StatelessWidget {
  final Color color;
  final double height;
  final IconData icon;
  final String text;
  final String navigatorDir;

  const NavigationButton(
      {super.key,
      required this.text,
      required this.height,
      required this.icon,
      required this.color,
      required this.navigatorDir});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 15,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(height),
          backgroundColor: color,
        ),
        onPressed: () => Navigator.pushNamed(context, navigatorDir),
        label: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final Color color;
  final double height;
  final IconData icon;
  final String text;
  final Function action;

  const ActionButton(
      {super.key,
      required this.text,
      required this.height,
      required this.icon,
      required this.color,
      required this.action});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 15,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(height),
          backgroundColor: color,
        ),
        onPressed: () => action,
        label: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}

class ActionHeader extends StatelessWidget {
  final Color color;
  //final double height;
  final IconData icon;
  final String text;
  //final Function action;

  const ActionHeader(
      {super.key,
      required this.text,
      //required this.height,
      required this.icon,
      required this.color,
      //required this.action
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.maxFinite,
      padding: EdgeInsets.only(left: 12, right: 12),
      //margin: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 15,
        ),
        style: TextButton.styleFrom(
          //padding: EdgeInsets.all(height),
          alignment: Alignment.centerLeft,
          backgroundColor: color,
        ),
        onPressed: () => {},
        label: Text(text, textAlign: TextAlign.left),
      ),
    );
  }
}

class DotsMenuButton extends StatelessWidget {
  final VoidCallback? onPress; // Make onPress nullable

  const DotsMenuButton({Key? key, this.onPress}) : super(key: key); // It's now an optional parameter

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(FontAwesomeIcons.ellipsisV),
      onPressed: onPress, // If onPress is null, the button will be disabled
    );
  }
}

class ActionHeaderWithDotsMenu extends StatelessWidget {
  final String buttonText;

  const ActionHeaderWithDotsMenu({
    Key? key,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10), // Symmetric padding
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          // Full-width TextButton
          TextButton(
            onPressed: () => print('ButtonBar pressed'), // Placeholder function
            style: TextButton.styleFrom(
              primary: Colors.white, // Text color
              backgroundColor: Colors.white12, // Button background color
              padding: EdgeInsets.zero, // Remove default padding
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap target size
            ),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 16), // Padding for text
              child: Text(buttonText),
            ),
          ),

          // IconButton positioned to the right
          Positioned(
            right: 0,
            child: IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white), // Three dots icon with white color
              onPressed: () => print('Dots button pressed'), // Placeholder function
              padding: EdgeInsets.all(12), // Padding around the icon
              constraints: BoxConstraints(), // Remove any constraints
            ),
          ),
        ],
      ),
    );
  }
}



