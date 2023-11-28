import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class Notice_page extends StatefulWidget {
  Notice_page({super.key});

  @override
  State<Notice_page> createState() => _Notice_pageState();
}

class _Notice_pageState extends State<Notice_page> {
  final noticeCntrl = TextEditingController();
  final titleCntrl = TextEditingController();

  // For upload image start..........
  CollectionReference student =
      FirebaseFirestore.instance.collection('NoticeImage');

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
    var date = DateTime.now();
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Notice"),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 20),
                child: Icon(Icons.notification_add),
              )
            ],
          ),
          body: Container(
            height: _height,
            width: _width,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      controller: titleCntrl,
                      decoration: InputDecoration(hintText: "Title"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: noticeCntrl,
                      decoration: InputDecoration(hintText: "Notice"),
                    ),
                    SizedBox(
                      height: _height / 90,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          CollectionReference collRef =
                              FirebaseFirestore.instance.collection('Notice');

                          collRef.add({
                            'notice': noticeCntrl.text,
                            'date': date.millisecondsSinceEpoch,
                            'title': titleCntrl.text,
                          });
                          setState(() {});
                          noticeCntrl.clear();
                          titleCntrl.clear();
                          print(date.hour);
                        },
                        child: Text("Send")),
                    SizedBox(
                      height: _height / 15,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: _height / 2,
                            width: _width / 1.5,
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
                                onPressed: () {
                                  add_data();
                                },
                                child: Text("Send file")),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
