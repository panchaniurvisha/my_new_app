import 'package:flutter/material.dart';
import 'package:my_app/plugin/multiple_video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            //fontFamily: ''Dancing Script',
            primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        home: const MultipleVideo());
  }
}
