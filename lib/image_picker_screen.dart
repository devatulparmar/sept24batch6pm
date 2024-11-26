import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  final imagePickerObject = ImagePicker();
  XFile? selectedImage;
  List<XFile?> selectedMultipleImages = [];

  void _selectImageFromCamera() async {
    selectedImage = await imagePickerObject.pickImage(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.front,
      imageQuality: 100,
    );
    setState(() {});
  }

  void _selectImageFromGallery() async {
    selectedImage = await imagePickerObject.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );
    setState(() {});
  }

  void _selectMultipleImageFromGallery() async {
    selectedMultipleImages = await imagePickerObject.pickMultiImage(
      limit: 2,
      imageQuality: 100,
    );
    setState(() {});
  }

  Future _showOptions() {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        _selectImageFromCamera();
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.camera,
                      ),
                    ),
                    const Text('Camera'),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        _selectImageFromGallery();
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.photo,
                      ),
                    ),
                    const Text('Gallery'),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        _selectMultipleImageFromGallery();
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.folder_copy,
                      ),
                    ),
                    const Text('Select Multiple From Gallery'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker Screen'),
      ),
      body: ListView(
        children: [
          selectedImage == null
              ? Container()
              : CircleAvatar(
                  radius: 50,
                  backgroundImage: FileImage(File(selectedImage!.path)),
                ),
          ElevatedButton(
            onPressed: () {
              _showOptions();
            },
            child: const Text('Pick Image'),
          ),
          selectedMultipleImages.isEmpty
              ? Container()
              : ListView.builder(
                  itemCount: selectedMultipleImages.length,
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return CircleAvatar(
                      radius: 50,
                      backgroundImage: FileImage(
                        File(selectedMultipleImages[index]!.path),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
