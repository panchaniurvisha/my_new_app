import 'package:flutter/material.dart';
import 'package:my_app/toast_example.dart';

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
        home: const ToastExample());
  }
}
