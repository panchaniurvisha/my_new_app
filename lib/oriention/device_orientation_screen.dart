import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceOrientationScreen extends StatefulWidget {
  const DeviceOrientationScreen({super.key});

  @override
  State<DeviceOrientationScreen> createState() =>
      _DeviceOrientationScreenState();
}

class _DeviceOrientationScreenState extends State<DeviceOrientationScreen> {
  bool screenRotation = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]); //Portrait==vertical &&landscape=horizontal
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              screenRotation == false
                  ? SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.landscapeRight])
                  : SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
              setState(() {
                screenRotation = !screenRotation;
              });
            },
            child: const Text("Rotate the screen")),
      ),
    );
  }
}
