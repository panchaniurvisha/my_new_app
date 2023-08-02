import 'package:flutter/material.dart';

class FlexibleScreen extends StatefulWidget {
  const FlexibleScreen({Key? key}) : super(key: key);

  @override
  State<FlexibleScreen> createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flexibal------")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            //fit: FlexFit.tight,
            child: Container(
                color: Colors.green,
                //height: 900.0,
                //width: double.infinity,
                child: const Center(
                    child: Text(
                  'without child height\nall space take',
                  style: TextStyle(fontSize: 30.0),
                ))),
          ),
          Flexible(
            child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.amberAccent,
                child: const Center(
                    child: Text(
                  'Require space take\nwith chid height',
                  style: TextStyle(fontSize: 30.0),
                ))),
          ),

          /*Flexible(
            fit: FlexFit.loose,
            child: Container(
                color: Colors.green,
                height: 150,
                width: double.infinity,
                child: Center(
                    child: Text(
                      'Flexible - only 150 occupied',
                      style: TextStyle(fontSize: 40.0),
                    ))),
          ),*/
          /*Flexible(
            fit: FlexFit.tight,
            child: Container(
                color: Colors.green,
                height: 150, // HEIGHT IGNORED BY FLEXIBLE WITH TIGHT FIT
                width: double.infinity,
                child: Center(
                    child: Text(
                      'Flexible.tight - height of container completely ignored by Flexible. Takes up remaining available space',
                      style: TextStyle(fontSize: 25.0),
                    ))),
          ),*/
        ],
      ),
    );
  }
}
