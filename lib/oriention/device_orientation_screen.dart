import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DeviceOrientationScreen extends StatefulWidget {
  const DeviceOrientationScreen({super.key});

  @override
  State<DeviceOrientationScreen> createState() =>
      _DeviceOrientationScreenState();
}

class _DeviceOrientationScreenState extends State<DeviceOrientationScreen> {
  //bool screenRotation = false;
  List<DeviceOrientation> orientations = [
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeRight,
  ];
  int currentOrientationIndex = 0;
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
              // screenRotation == false
              //  ? SystemChrome.setPreferredOrientations(
              //  [DeviceOrientation.landscapeRight])
              // : SystemChrome.setPreferredOrientations(
              //  [DeviceOrientation.portraitUp]);
              final nextOrientationIndex =
                  (currentOrientationIndex + 1) % orientations.length;
              SystemChrome.setPreferredOrientations(
                  [orientations[nextOrientationIndex]]);

              setState(() {
                currentOrientationIndex = nextOrientationIndex;
              });
            },
            child: const Text("Rotate the screen")),
      ),
    );
  }
}
