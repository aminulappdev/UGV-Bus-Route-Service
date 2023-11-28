import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ugvbus/Pages/Others/contact_page.dart';
import 'package:ugvbus/Pages/Others/terms_of_Service.dart';
import 'package:ugvbus/Pages/Others/ugv_page.dart';
import 'package:ugvbus/Pages/admin/show_schedule.dart';
import 'package:ugvbus/Pages/maps/maps.dart';
import '../Pages/admin/tabview.dart';
import '../Pages/chatbot/chatbot_que_page.dart';
import '../Pages/admin/show_notice_page.dart';


class My_Drawer extends StatelessWidget {
  const My_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      height: _height,
      width: _width,
      child: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: _height / 13,
                width: _width / 2,
                color: Colors.blue,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Drawer",
                        style: TextStyle(
                            fontSize: _height / 50, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  
                  children: [
                    Container(
                      height: _height/1.4,
                      //color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.notifications),
                              SizedBox(
                                width: _width / 30,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Tabview()),
                                    );
                                  },
                                  child: Text(
                                    "Notice",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _height / 60),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: _height / 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.contact_page),
                              SizedBox(
                                width: _width / 30,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Contact_Page()),
                                    );
                                  },
                                  child: Text(
                                    "Contact",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _height / 60),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: _height / 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.map),
                              SizedBox(
                                width: _width / 30,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Google_maps()),
                                    );
                                  },
                                  child: Text(
                                    "Map",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _height / 60),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: _height / 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.cast_for_education),
                              SizedBox(
                                width: _width / 30,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Ugv_page()),
                                    );
                                  },
                                  child: Text(
                                    "UGV",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _height / 60),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: _height / 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.schedule),
                              SizedBox(
                                width: _width / 30,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ShowSchedule()),
                                    );
                                  },
                                  child: Text(
                                    "Schedule",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _height / 60),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: _height / 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.manage_accounts),
                              SizedBox(
                                width: _width / 30,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Chatbot_que_page()),
                                    );
                                  },
                                  child: Text(
                                    "Chatbot",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: _height / 60),
                                  )),
                            ],
                          ),
                          // SizedBox(
                          //   height: _height / 3.7,
                          // ),
                        
                        ],
                      ),
                    ),

                      Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Container(
                        height: _height / 6.5,
                        width: _width,
                         //color: Colors.amber,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Others"),
                              // SizedBox(
                              //   height: _height / 80,
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                    
                                children: [
                                  Icon(Icons.file_open_sharp),
                                  SizedBox(
                                    width: _width / 30,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TermsOfService()),
                                        );
                                      },
                                      child: Text(
                                        "Terms of Service",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: _height / 60),
                                      )),
                                ],
                              ),                                 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.account_box_outlined),
                                  SizedBox(
                                    width: _width / 30,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Dialog(
                                                child: Stack(
                                                 // alignment: Alignment.topCenter,
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20.0)
                                                      ),
                                                      height: _height/3.3,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets
                                                                .all(_height/50),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            SizedBox(
                                                              height:_height/20,
                                                            ),
                                                            Text(
                                                                "Developed by",style: TextStyle(fontWeight: FontWeight.bold),),
                                                             SizedBox(
                                                              height:_height/80,
                                                            ),
                                                            Text(
                                                                "Md Aminul Islam\nDepartment of Computer Science & Engineering\nUniversity of Global Village\nContact : aminulappdev@gmail.com"),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
      
                                                    Positioned(
                                                       left: _height/8,
                                                        top: -_height/17,
                                                        child: CircleAvatar(
                                                          backgroundImage: AssetImage("assets/images/people/developer.jpg"),
                                                          radius: _height/17,
                                                        ))
                                                  ],
                                                ),
                                              );
                                            });
                                      },
                                      child: Text(
                                        "About Developer",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: _height / 60),
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}