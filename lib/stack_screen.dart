import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              //alignment: Alignment.bottomRight,
              //fit: StackFit.loose,
              //clipBehavior: Clip.antiAliasWithSaveLayer,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.yellowAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ),
                Container(
                  height: 60,
                  width: 60,
                  color: Colors.red,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 70,
                  ),
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
