import 'dart:io';

import 'package:drink/Myimagefile/Myimagefile_fun.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  final ImagePicker picker = ImagePicker();
  File? file, file2;
  List<File> imageList = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                File? x = await galleryPicker(
                );


                if (x != null) {
                  imageList.add(x);
                  setState(() {});
                }
              },
              child: const Text("photos"),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        height: 200,
                        child: Image.file(
                          imageList.elementAt(index),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: FloatingActionButton(
                            onPressed: () {
                              imageList.removeAt(index);
                              setState(() {});
                            },
                            backgroundColor: Colors.black,
                            child: const Icon(Icons.close),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

// ElevatedButton(
// onPressed: () async {
// ImagePicker picker = ImagePicker();
//
// XFile? photo = await picker.pickImage(source: ImageSource.gallery);
// print('path : ${photo?.path}');
// if (photo != null) {
// setState(() {
// file = File(photo.path);
// });
// }
// },
// child: Text("add from gallary",style: TextStyle(color: Colors.black)),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.white)),
// ),
//
//
// if (file != null)
// Image.file(
// file!,
// fit: BoxFit.fill,
// ),
