import 'package:flutter/material.dart';

class ImageFirstScreen extends StatefulWidget {
  const ImageFirstScreen({Key? key}) : super(key: key);
  @override
  State<ImageFirstScreen> createState() => _ImageFirstScreenState();
}

class _ImageFirstScreenState extends State<ImageFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sweets View',
          style: TextStyle(
            fontSize: 35,
            height: 0.5, //line height 90% of actual height
            color: Colors.black45,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontFamily: 'Italianno',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/sweets.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/laddus.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/cake.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/jalebi.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent,
                        spreadRadius: 3,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 30,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/biscuits.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/chocolate_cake.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/kajukatli.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/punjabi_sweet.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueAccent,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/penda.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent,
                        spreadRadius: 3,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 30,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/khajurpak.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
