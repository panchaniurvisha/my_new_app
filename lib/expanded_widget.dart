import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget'),
      ),
      body: Center(
        child: Row(
          children: [
            Container(
              color: Colors.black,
              height: 200,
              width: 100,
            ),
            Expanded(
              //flex: 50,
              child: Container(
                color: Colors.red,
                height: 200,
              ),
            ),
            Expanded(
              //flex: 50,
              child: Container(
                color: Colors.greenAccent,
                height: 200,
                //margin: const EdgeInsets.all(12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
