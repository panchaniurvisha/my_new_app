import 'package:flutter/material.dart';

class ListViewFirstScreen extends StatefulWidget {
  const ListViewFirstScreen({Key? key}) : super(key: key);

  @override
  State<ListViewFirstScreen> createState() => _ListViewFirstScreenState();
}

class _ListViewFirstScreenState extends State<ListViewFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List View Screen')),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 80,
            width: 80,
            color: Colors.cyan,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.pink,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.purpleAccent,
          ),
          Container(height: 80, width: 80, color: Colors.lightGreenAccent),
          Container(
            height: 80,
            width: 80,
            color: Colors.grey,
          ),
          Container(
            height: 200,
            child: ListView(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.deepOrange,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.red,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.black,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.deepOrange,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.red,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.black,
          ),
          Container(
            height: 80,
            width: 80,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
