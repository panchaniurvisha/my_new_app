import 'package:flutter/material.dart';

class RowColumnView extends StatefulWidget {
  const RowColumnView({Key? key}) : super(key: key);
  @override
  State<RowColumnView> createState() => _RowColumnViewState();
}

class _RowColumnViewState extends State<RowColumnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Row_Column_View")),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.white, Colors.teal],
                        tileMode: TileMode.repeated,
                        stops: [0.25, 0.50, 0.75]),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    gradient: SweepGradient(
                        colors: [Colors.black, Colors.white, Colors.teal],
                        tileMode: TileMode.repeated,
                        stops: [0.25, 0.50, 0.75],
                        center: Alignment.center),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    gradient: RadialGradient(
                      colors: [Colors.black, Colors.white, Colors.teal],
                      tileMode: TileMode.repeated,
                      stops: [0.25, 0.50, 0.75],
                      radius: 2,
                      center: Alignment.center,
                      focal: Alignment.centerLeft,
                      focalRadius: 1,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      border: Border.all(
                          color: Colors.black,
                          width: 4.0,
                          style: BorderStyle.solid),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.yellowAccent,
                          spreadRadius: 2,
                          offset: Offset(5, 5),
                          blurRadius: 10,
                          blurStyle: BlurStyle.inner,
                        )
                      ]),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      border: Border.all(
                          color: Colors.black,
                          width: 4.0,
                          style: BorderStyle.solid),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.deepOrange,
                          spreadRadius: 2,
                          offset: Offset(5, 5),
                          blurRadius: 10,
                          blurStyle: BlurStyle.inner,
                        )
                      ]),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.yellowAccent,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.lightGreen,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 0.75,
                          spreadRadius: 1,
                          color: Colors.blueAccent),
                    ],
                  ),
                  child: const Icon(Icons.call),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
