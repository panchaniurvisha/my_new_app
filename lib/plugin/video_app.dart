import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  VideoAppState createState() => VideoAppState();
}

class VideoAppState extends State<VideoApp> {
  VideoPlayerController? _controller;
  VideoPlayerController? videoPlayerController;
  VideoPlayerController? cameraVideoPlayerController;

  final ImagePicker picker = ImagePicker();
  XFile? galleryVideo, cameraVideo;
  File? video, videoOfCamera;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                if (videoPlayerController != null)
                  videoPlayerController!.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: videoPlayerController!.value.aspectRatio,
                    child: VideoPlayer(videoPlayerController!),
                  )
                      : Container()
                else
                  const Text("click on pick video to select video"),
                ElevatedButton(
                  onPressed: () async {
                    galleryVideo = await picker.pickVideo(source: ImageSource.gallery);
                    video = File(galleryVideo!.path);
                    videoPlayerController = VideoPlayerController.file(video!)
                      ..initialize().then((value) {
                        setState(() {});
                        videoPlayerController!.play();
                      });
                  },
                  child: const Text("Pick video from gallery"),
                ),
                if (videoPlayerController != null)
                  IconButton(
                    onPressed: () {
                      setState(() {
                        videoPlayerController!.value.isPlaying ? videoPlayerController!.pause() : videoPlayerController!.play();
                      });
                    },
                    icon: Icon(
                      videoPlayerController!.value.isPlaying ? Icons.pause : Icons.play_arrow,
                    ),
                  ),

                /// Camera Video ....
                if (cameraVideoPlayerController != null)
                  cameraVideoPlayerController!.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: 16 / 9,
                    // aspectRatio: cameraVideoPlayerController!.value.aspectRatio,
                    child: VideoPlayer(cameraVideoPlayerController!),
                  )
                      : Container()
                else
                  const Text("click on pick video to select video"),
                ElevatedButton(
                    onPressed: () async {
                      cameraVideo = await picker.pickVideo(source: ImageSource.camera);
                      videoOfCamera = File(cameraVideo!.path);
                      cameraVideoPlayerController = VideoPlayerController.file(videoOfCamera!)
                        ..initialize().then((value) {
                          setState(() {
                            cameraVideoPlayerController!.play();
                          });
                        });
                    },
                    child: const Text("pick video from camera")),
                if (cameraVideoPlayerController != null)
                  IconButton(
                    onPressed: () {
                      setState(() {
                        cameraVideoPlayerController!.value.isPlaying ? cameraVideoPlayerController!.pause() : cameraVideoPlayerController!.play();
                      });
                    },
                    icon: Icon(
                      cameraVideoPlayerController!.value.isPlaying ? Icons.pause : Icons.play_arrow,
                    ),
                  ),

                /// Network Video ....
                _controller!.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: _controller!.value.aspectRatio,
                  child: VideoPlayer(_controller!),
                )
                    : Container(),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                _controller!.value.isPlaying ? _controller!.pause() : _controller!.play();
              });
            },
            child: Icon(
              _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
    videoPlayerController!.dispose();
    cameraVideoPlayerController!.dispose();
  }
}