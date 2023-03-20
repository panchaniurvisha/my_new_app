import 'package:flutter/material.dart';

class ImageThirdScreen extends StatefulWidget {
  const ImageThirdScreen({Key? key}) : super(key: key);
  @override
  State<ImageThirdScreen> createState() => _ImageThirdScreenState();
}

class _ImageThirdScreenState extends State<ImageThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.adb_rounded, size: 50, color: Colors.black45, shadows: [
            Shadow(
              color: Colors.white,
              offset: Offset(1, 3),
              blurRadius: 3,
            )
          ]),
        ],
        centerTitle: true,
        title: const Text(
          'Diamond~~Ring~~Theme',
          style: TextStyle(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              fontSize: 30,
              fontWeight: FontWeight.w600,
              wordSpacing: 3,
              letterSpacing: 2,
              height: 2,
              fontFamily: 'italianno'),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          color: Colors.deepPurple,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.network(
                    'https://www.kalyanjewellers.net/images/Jewellery/Diamond/images/alessandra-diamond-ring.jpg',
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
                          color: Colors.deepPurple,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR2yqs3PfUP4CZ5D-GVWt8QuO3unQXeOJuxDZoJXd-85pW--zLCFAsOc6HhlUnBQNSqA8&usqp=CAU',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    /*borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),*/
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/736x/1e/7d/2b/1e7d2b6a28c957ee944d1b9179e7e716.jpg'),
                      fit: BoxFit.scaleDown,
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    /*borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),*/
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://www.caratcraft.ae/wp-content/uploads/2022/11/RNG001416-1-1000x1000.jpg'),
                      fit: BoxFit.scaleDown,
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        color: Colors.deepPurple,
                        spreadRadius: 3,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 30,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Image.network(
                    'https://m.media-amazon.com/images/I/41yfnIyWk8L._UY500_.jpg',
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
                          color: Colors.deepPurple,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.network(
                    'https://m.media-amazon.com/images/I/61kR-lxoISL._SL1000_.jpg',
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    /*borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),*/
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd10awcr4QJZCG2Drpzt_j-kjiqQY2mhAKJw&usqp=CAU'),
                      fit: BoxFit.contain,
                      scale: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 150,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.amberAccent,
                      Colors.lightGreenAccent,
                      Colors.deepPurple
                    ]),
                    color: Colors.black26,
                    /*borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),*/
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://smedn7cdn.candere.com/media/jewellery/images/LCR0332_1.jpeg'),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          color: Colors.deepPurple,
                          spreadRadius: 3,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 30,
                          offset: Offset(0, 1)),
                    ],
                  ),
                  child: Image.network(
                    'https://smedn7cdn.candere.com/media/jewellery/images/c019078_1_2.jpeg',
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
                        color: Colors.deepPurple,
                        spreadRadius: 3,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 30,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Image.network(
                    'https://m.media-amazon.com/images/I/41q6zKwllHS.jpg',
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
