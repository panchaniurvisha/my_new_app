import 'package:flutter/material.dart';
import 'package:my_app/table_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations(
  //         [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
  //     .then((value) => runApp(const MyApp()));
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
        home: TableScreen());
  }
}
