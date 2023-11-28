import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class Show_notice_page extends StatelessWidget {
  Show_notice_page({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(32, 80, 170, 1),
        body: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Notice')
                .orderBy('date', descending: true)
                .snapshots(),
            builder: (_, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Text("Loading"),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (_, index) {
                      DocumentSnapshot data = snapshot.data!.docs[index];
                      var newYearsEve = DateTime.fromMillisecondsSinceEpoch(
                          data['date'] + 21600000,
                          isUtc: true);

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: _height / 20,
                                    width: _height / 20,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/icon/avatar.png"),
                                            fit: BoxFit.fill)),
                                  )),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Text(
                                          '${DateFormat('yMMMMd').format(newYearsEve)} ,${DateFormat('jms').format(newYearsEve)} ',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                    255, 255, 255, 255)
                                                .withOpacity(0.8),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    data['title'],
                                                    style: TextStyle(
                                                        color: Color.fromARGB(255, 5, 0, 0),fontWeight: FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                data['notice'],
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    });
              }
            }),
      ),
    );
  }
}
