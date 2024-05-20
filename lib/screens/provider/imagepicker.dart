
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:platform_converter_app/screens/model/image_picker.dart';
import '../utils/variable.dart';


class CustomImageProvider extends ChangeNotifier {
  AddImage a1 = AddImage(Image: File(""));

  ImageCamera() async {
    ImagePicker picker = ImagePicker();

    XFile? xFile = await picker.pickImage(source: ImageSource.camera);

    String path = xFile!.path;

    a1.Image = File(path);

    allimages = a1.Image.path;

    notifyListeners();
  }

  ImageGallery() async {
    ImagePicker picker = ImagePicker();

    XFile? xFile = await picker.pickImage(source: ImageSource.gallery);

    String path = xFile!.path;

    a1.Image = File(path);

    allimages = a1.Image.path;

    notifyListeners();
  }

  ClearImage() {
    a1.Image = File("");
    notifyListeners();
  }
}
