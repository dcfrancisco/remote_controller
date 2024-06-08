import 'package:flutter/material.dart';
import 'widgets/joystick_controls.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drone Controller',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JoystickControls(),
    );
  }
}
