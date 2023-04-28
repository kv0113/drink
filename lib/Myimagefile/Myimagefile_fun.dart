import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File?> galleryPicker() async {

  final ImagePicker picker = ImagePicker();

  XFile? photo = await picker.pickImage(source: ImageSource.gallery,);

  if (photo != null) {
    return File(photo.path);
  } else {
    return null;
  }
}
