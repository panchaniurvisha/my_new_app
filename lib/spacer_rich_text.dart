import 'package:flutter/material.dart';

class SpacerRichText extends StatefulWidget {
  const SpacerRichText({Key? key}) : super(key: key);

  @override
  State<SpacerRichText> createState() => _SpacerRichTextState();
}

class _SpacerRichTextState extends State<SpacerRichText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SPACER &RICH_TEXT'),
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      text: 'urvisha',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.purple,
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        height: 1,
                        fontWeight: FontWeight.w600,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\nPANCHANI URVISHA  ',
                          style: TextStyle(
                            fontFamily: 'Satisfy',
                            decorationStyle: TextDecorationStyle.dotted,
                            color: Colors.pink,
                            //fontStyle: FontStyle.italic,
                            fontSize: 30,
                            height: 1,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '\nFlutter ',
                          style: TextStyle(
                            fontFamily: 'Italianno',
                            decorationStyle: TextDecorationStyle.double,
                            color: Colors.blueAccent,
                            fontStyle: FontStyle.normal,
                            fontSize: 40,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                            text: 'Lorem Ipsum is simply dummy text',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              color: Colors.yellowAccent,
                              shadows: [
                                Shadow(
                                    color: Colors.teal,
                                    blurRadius: 2,
                                    offset: Offset(
                                      0,
                                      2,
                                    )),
                              ],
                            )),
                      ],
                    ),
                    overflow: TextOverflow.ellipsis,
                    //softWrap: true,
                    textAlign: TextAlign.center,
                    textScaleFactor: 1,
                  ),
                ),
              ],
            ),
            Container(
              height: 70,
              width: 70,
              color: Colors.red,
            ),
            const Spacer(),
            Container(
              height: 70,
              width: 70,
              color: Colors.black,
            ),
            const Spacer(),
            Container(
              height: 70,
              width: 70,
              color: Colors.lightGreen,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
