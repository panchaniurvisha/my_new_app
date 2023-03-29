import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Widget Example',
        ),
      ),
      /*body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Expanded(
            child: Text(
              'Hello World This Is Text Widget And TextStyle,Widget It Is Most Used In Flutter',
              textScaleFactor: 2,
              textAlign: TextAlign.right,
              //textDirection: TextDirection.rtl,
              maxLines: 6,
              //overflow: TextOverflow.clip,
              style: TextStyle(
                fontFamily: 'Satisfy',
                color: Colors.black54,
                decoration: TextDecoration.underline,
                backgroundColor: Colors.amber,
                fontWeight: FontWeight.w900,
                //fontSize: 30,
                fontStyle: FontStyle.italic,
                height: 3,
                wordSpacing: 30,
                letterSpacing: 8,
                shadows: [
                  Shadow(
                      color: Colors.teal, blurRadius: 5, offset: Offset(10, 10))
                ],
              ),
            ),
          ),
        ],
      ),*/
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Ellipsis Example",
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dotted,
              fontSize: 25,
              fontWeight: FontWeight.w600,
              wordSpacing: 3,
              letterSpacing: 2,
              height: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey.shade200,
            child: const Text(
              "This is the example of TextOverflow ellipsis, In the end there are the dots",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.black,
                letterSpacing: 2,
                wordSpacing: 5,
                fontStyle: FontStyle.italic,
                height: 3,
                fontFamily: 'Satisfy',
                fontSize: 30,
                fontWeight: FontWeight.w900,
                decoration: TextDecoration.underline,
                //decorationStyle: TextDecorationStyle.dashed,
                textBaseline: TextBaseline.alphabetic,
                backgroundColor: Colors.pinkAccent,
                shadows: [
                  Shadow(
                    color: Colors.white,
                    offset: Offset(10, 10),
                    blurRadius: 5,
                  )
                ],
                decorationThickness: 2,
              ),
            ),
          ),
          const Divider(
            color: Colors.deepPurple,
            height: 2,
            thickness: 4,
            endIndent: 6,
            indent: 6,
          ),
          const Text(
            "fade Example",
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 25,
              fontWeight: FontWeight.w600,
              wordSpacing: 3,
              letterSpacing: 2,
              height: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            color: Colors.grey.shade200,
            width: 300,
            child: const Text(
              'this is fade example.com',
              maxLines: 1,
              overflow: TextOverflow.fade,
              softWrap: false,
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontFamily: "satisfy",
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const Divider(
            color: Colors.deepPurple,
            height: 2,
            thickness: 4,
            endIndent: 6,
            indent: 6,
          ),
          const Text(
            "clip Example",
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              fontSize: 25,
              fontWeight: FontWeight.w600,
              wordSpacing: 3,
              letterSpacing: 2,
              height: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            color: Colors.grey.shade200,
            width: 300,
            child: const Text(
              'this is clip example.com',
              maxLines: 1,
              overflow: TextOverflow.clip,
              softWrap: false,
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontFamily: "Satisfy",
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const Divider(
            color: Colors.deepPurple,
            height: 2,
            thickness: 4,
            endIndent: 6,
            indent: 6,
          ),
          const Text(
            "visible Example",
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              fontSize: 25,
              fontWeight: FontWeight.w600,
              wordSpacing: 3,
              letterSpacing: 2,
              height: 2,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            color: Colors.grey.shade200,
            width: 300,
            child: const Text(
              'this is visible example',
              maxLines: 1,
              overflow: TextOverflow.visible,
              softWrap: false,
              style: TextStyle(
                fontSize: 40,
                color: Colors.green,
                fontFamily: "Satisfy",
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
