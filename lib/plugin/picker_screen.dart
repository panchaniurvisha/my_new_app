import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickerScreen extends StatefulWidget {
  const PickerScreen({Key? key}) : super(key: key);

  @override
  State<PickerScreen> createState() => _PickerScreenState();
}

class _PickerScreenState extends State<PickerScreen> {
  final ImagePicker picker = ImagePicker(); //instance of class
  List<File> multiImage = [];
  XFile? captureImage, galleryImage;
  File? image, pickImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (image != null) Image.file(image!),
            ElevatedButton(
              onPressed: () async {
                captureImage = await picker.pickImage(
                    //instance method
                    source: ImageSource.camera,
                    maxHeight: 200,
                    maxWidth: 200,
                    imageQuality: 100);

                debugPrint("Pick image -------->> ${captureImage!.path}");
                debugPrint("Pick image name -------->> ${captureImage!.name}");

                image = File(captureImage!.path);

                setState(() {});
              },
              child: const Text("capture Image from camera"),
            ),
            if (pickImage != null) Image.file(pickImage!),
            ElevatedButton(
              onPressed: () async {
                galleryImage = await picker.pickImage(
                    source: ImageSource.gallery,
                    maxHeight: 200,
                    maxWidth: 200,
                    imageQuality: 100);

                debugPrint("Pick image -------->> ${galleryImage!.path}");
                debugPrint("Pick image name -------->> ${galleryImage!.name}");

                pickImage = File(galleryImage!.path);

                setState(() {});
              },
              child: const Text("Pick Image from gallery"),
            ),
            ElevatedButton(
              onPressed: () async {
                List<XFile> pickedImage = await picker.pickMultiImage(
                    maxHeight: 200, maxWidth: 200, imageQuality: 100);
                setState(() {
                  multiImage = pickedImage.map((e) => File(e.path)).toList();
                });
              },
              child: const Text("multiple Image picker"),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) =>
                  GridTile(child: Image.file(multiImage[index])),
              itemCount: multiImage.length,
            )
          ],
        ),
      ),
    );
  }
}
