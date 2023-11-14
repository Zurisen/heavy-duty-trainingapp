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
  final String text;
  final Color color;
  final VoidCallback? onDotsPress;

  const ActionHeaderWithDotsMenu({
    Key? key,
    required this.text,
    required this.color,
    this.onDotsPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          IconButton(
            icon: Icon(FontAwesomeIcons.ellipsisV, color: Colors.white),
            onPressed: onDotsPress,
          ),
        ],
      ),
    );
  }
}