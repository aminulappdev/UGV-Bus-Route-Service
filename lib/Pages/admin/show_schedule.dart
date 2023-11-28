import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ShowSchedule extends StatefulWidget {
  const ShowSchedule({super.key});

  @override
  State<ShowSchedule> createState() => _ShowScheduleState();
}

class _ShowScheduleState extends State<ShowSchedule> {
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Schedule Page"),
        ),
        body: Container(
          height: _height,
          width: _width,
          child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('ScheduleImage').orderBy('time', descending: true)
                .snapshots(),    
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: Text("Loading"),);
                }
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SingleChildScrollView(       
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: _height,
                              width: _width,
                              child: Image.network(
                                "${snapshot.data?.docs[index]['img_url']}",
                                height: 100,
                                width: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                            
                          ],
                        ),
                      );
                    });
              }),
        ),
      ),
    );
  }
}
