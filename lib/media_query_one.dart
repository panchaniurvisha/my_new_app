import 'package:flutter/material.dart';

class MediaQueryOne extends StatefulWidget {
  const MediaQueryOne({super.key});

  @override
  State<MediaQueryOne> createState() => _MediaQueryOneState();
}

class _MediaQueryOneState extends State<MediaQueryOne> {
  double? statusBarHeight;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 5;
    double width = MediaQuery.of(context).size.height / 5;

    statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
              child: Container(
                padding: EdgeInsets.all(height / 2.5),
                margin: EdgeInsets.all(height / 5),
                height: height,
                width: width,
                color: Colors.deepPurple,
                child: const Text("123"),
              ),
            ),

            MediaQuery.of(context).size.height > 600
                ? Container(
                    height: height,
                    width: width,
                    color: Colors.amberAccent,
                  )
                : const SizedBox(),
            Text("padding top ${MediaQuery.of(context).padding.top}"),
            Text("padding bottom ${MediaQuery.of(context).padding.bottom}"),
            //Text("margin all side ${MediaQuery.of(context).}"),
            Text("width---->${MediaQuery.of(context).size.width}"),
            Text("height---->${MediaQuery.of(context).size.height}"),
          ],
        ),
      ),
    );
  }
}
