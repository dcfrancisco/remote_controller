import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

class JoystickControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drone Controller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Throttle/Yaw Control'),
            SizedBox(
              height: 150,
              width: 150,
              child: Joystick(
                mode: JoystickMode.all,
                listener: (details) {
                  print('x: ${details.x}, y: ${details.y}');
                },
              ),
            ),
            SizedBox(height: 50),
            Text('Pitch/Roll Control'),
            SizedBox(
              height: 150,
              width: 150,
              child: Joystick(
                mode: JoystickMode.all,
                listener: (details) {
                  print('x: ${details.x}, y: ${details.y}');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
