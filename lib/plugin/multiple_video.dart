import 'package:flutter/material.dart';

class MultipleVideo extends StatefulWidget {
  const MultipleVideo({Key? key}) : super(key: key);

  @override
  State<MultipleVideo> createState() => _MultipleVideoState();
}

class _MultipleVideoState extends State<MultipleVideo> {
  var videoList = [
    {
      'name': 'Big Buck Bunny',
      'media_url':
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      'thumb_url': 'https://i.ytimg.com/vi/aqz-KE-bpKQ/maxresdefault.jpg',
    },
    {
      'name': 'Elephant Dream',
      'media_url':
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      'thumb_url': 'https://i.ytimg.com/vi/kPdv44HtEoA/maxresdefault.jpg',
    },
    {
      'name': "For Bigger Blazes",
      'media_url':
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
      'thumb_url':
          'https://i.vimeocdn.com/filter/overlay?src0=https%3A%2F%2Fi.vimeocdn.com%2Fvideo%2F1640382908-e12b52a7c901331b8885a654b1190ec82cb156416fd3d0d08ec9f7a37db99c25-d_1280x720&src1=https%3A%2F%2Ff.vimeocdn.com%2Fimages_v6%2Fshare%2Fplay_icon_overlay.png',
    },
    {
      'name': 'Sintel',
      'media_url':
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
      'thumb_url': 'https://i.ytimg.com/vi/c2gB83g_HSc/maxresdefault.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 8,
            ),
            Expanded(
                child: AspectRatio(
              aspectRatio: 16 / 9,
              child: bett,
            ))
          ],
        ));
  }
}
