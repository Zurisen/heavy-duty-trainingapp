import 'package:flutter/material.dart';

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