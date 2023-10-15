import 'package:flutter/material.dart';

class GreetingBox extends StatelessWidget {
  final String greetingText;

  // Constructor
  GreetingBox({required this.greetingText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        greetingText,
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}
