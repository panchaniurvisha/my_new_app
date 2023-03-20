import 'package:flutter/material.dart';

class ImageSecondScreen extends StatefulWidget {
  const ImageSecondScreen({Key? key}) : super(key: key);

  @override
  State<ImageSecondScreen> createState() => _ImageSecondScreenState();
}

class _ImageSecondScreenState extends State<ImageSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.add_circle, size: 50, color: Colors.black45, shadows: [
            Shadow(
              color: Colors.white,
              offset: Offset(1, 3),
              blurRadius: 3,
            )
          ]),
        ],
        centerTitle: true,
        title: const Text('Natural theme View',
            style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 10.0, // shadow blur
                    color: Colors.white, // shadow color
                    offset: Offset(2.0, 2.0),
                  ),
                ],
                height: 0.5, //line height 90% of actual height
                color: Colors.black45,
                decoration: TextDecoration.underline,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
                fontFamily: 'Dancing Script')),
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReLjMKrB7TwUbsiCgWBRQytlGTyGzT7A82tQ&usqp=CAU'),
                      fit: BoxFit.cover,
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
                ),
                const Icon(
                  Icons.fast_forward_rounded,
                  color: Colors.amberAccent,
                  size: 50,
                  shadows: [
                    Shadow(
                      color: Colors.pink,
                      offset: Offset(1, 3),
                    ),
                  ],
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://thumbs.dreamstime.com/b/landscape-nature-mountan-alps-rainbow-76824355.jpg'),
                      fit: BoxFit.cover,
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
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/2422915/pexels-photo-2422915.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/4101555/pexels-photo-4101555.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1420440/pexels-photo-1420440.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
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
                ),
                const Icon(
                  Icons.fast_forward,
                  color: Colors.amberAccent,
                  size: 50,
                  shadows: [
                    Shadow(
                      color: Colors.pink,
                      offset: Offset(1, 3),
                    ),
                  ],
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1532771/pexels-photo-1532771.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
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
                ),
              ],
            ),
            Column(
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/3889928/pexels-photo-3889928.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1366913/pexels-photo-1366913.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/1033729/pexels-photo-1033729.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
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
                ),
                const Icon(
                  Icons.fast_forward_rounded,
                  color: Colors.amberAccent,
                  size: 50,
                  shadows: [
                    Shadow(
                      color: Colors.pink,
                      offset: Offset(1, 3),
                    ),
                  ],
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
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/394545/pexels-photo-394545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover,
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
