import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Dynamic_schedule extends StatefulWidget {
  const Dynamic_schedule({super.key});

  @override
  State<Dynamic_schedule> createState() => _Dynamic_scheduleState();
}

class _Dynamic_scheduleState extends State<Dynamic_schedule> {
  // For upload image start..........
  CollectionReference student =
      FirebaseFirestore.instance.collection('ScheduleImage');

  void add_data() async {
    setState(() {});
    final imgUrl = await uploadImage(_image!);
    var time = DateTime.now();
    await student.add({
      "img_url": imgUrl,
      'time': time.millisecondsSinceEpoch,
    });
  }

  File? _image;
  final picker = ImagePicker();

  Future imagepicker() async {
    final pick = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pick != null) {
        _image = File(pick.path);
      }
    });
  }

  Future uploadImage(File _image) async {
    String url;
    final im_name = DateTime.now().microsecondsSinceEpoch.toString();
    Reference refrence = FirebaseStorage.instance.ref().child('user$im_name');
    await refrence.putFile(_image);
    url = await refrence.getDownloadURL();
    return url;
  }

  // For upload image end ..........
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add schedule"),
        ),
        body: Container(
            height: _height,
            width: _width,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: _height / 1.3,
                    width: _width,
                    child: _image == null
                        ? Center(child: Text("no image"))
                        : Image.file(
                            _image!,
                            fit: BoxFit.fill,
                          ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        imagepicker();
                      },
                      child: Text("Select file")),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  const Color.fromARGB(255, 3, 44, 77)// Background color
                        ),
                        onPressed: () {
                          add_data();
                        },
                        child: Text("Send file")),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
