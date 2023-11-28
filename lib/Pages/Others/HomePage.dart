import 'dart:async';
import 'dart:ffi';
import 'dart:ui';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:ugvbus/Pages/Location/security_code.dart';
import 'package:ugvbus/Pages/Others/contact_page.dart';
import 'package:ugvbus/Pages/admin/show_schedule.dart';
import 'package:ugvbus/Pages/admin/tabview.dart';
import 'package:ugvbus/Pages/chatbot/chatbot_que_page.dart';
import 'package:ugvbus/Pages/admin/admin_panel_page.dart';
import 'package:ugvbus/Pages/Location/realtime_test.dart';
import 'package:ugvbus/Pages/Others/ugv_page.dart';
import 'package:location/location.dart' as loc;
import 'package:ugvbus/Pages/maps/maps.dart';
import 'package:ugvbus/Widget/circle_avatar_widget.dart';
import 'package:ugvbus/Widget/drawer.dart';
import 'package:ugvbus/Widget/place_routes.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Timer _timer;

    void initState() {
      _timer = Timer(Duration(milliseconds: 500), () {
        // SOMETHING
      });
      super.initState();
    }

    var _time = DateTime.now();
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(32, 80, 170, 1), // Gives error
        key: scaffoldKey,
        drawer: Container(
          // color: Colors.greenAccent,
          width: _width / 2,
          height: _height,
          child: Drawer(
            child: My_Drawer(),
          ),
        ),

        body: Container(
          height: _height,
          width: _width,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (scaffoldKey.currentState!.isDrawerOpen) {
                            scaffoldKey.currentState!.closeDrawer();
                            //close drawer, if drawer is open
                          } else {
                            scaffoldKey.currentState!.openDrawer();
                            //open drawer, if drawer is closed
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Icon(
                            Icons.menu,
                            size: _height / 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Adminpanel_page()),
                            );
                          },
                          child: Container(
                            height: _height / 25,
                            width: _width / 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              "Admin panel",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: _height / 50),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _height / 95,
                  ),
                  Container(
                    height: _height / 10,
                    width: _width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/icon/ugv.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  // SizedBox(
                  //   height: _height / 80,
                  // ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Chatbot_que_page()),
                      );
                    },
                    child: Container(
                      height: _height / 10,
                      width: _width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/icon/chatbot1.jpg"),
                              fit: BoxFit.fill),
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: _height / 100,
                  ),

                  // Show location start --------------------------------------------
                  Container(
                    height: _height / 4,
                    width: _width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bus/map.jpg"),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.blue,
                    ),
                  ),

                  // Show location end ---------------------------------------------

                  //Current location system start ----------------------------------

                  SizedBox(
                    height: _height / 100,
                  ),
                  Container(
                    width: _width,
                    height: _height / 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Container(
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (Security_page())),
                              );
                            },
                            child: Text(
                              "Get Current location",
                              style: TextStyle(
                                  fontSize: _height / 45,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            )),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: _height / 70,
                  ),

                  //Current location system end ----------------------------------

                  // Circle Avatar start ...................................................................
                  // .......................................................................................

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: _height / 8,
                      width: _width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Circle_avatar_Widget(
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tabview()),
                              );
                            },
                            name: "Notice",
                            img: "assets/images/icon/notification.png",
                          ),
                          Circle_avatar_Widget(
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Contact_Page()),
                              );
                            },
                            name: "Contact",
                            img: "assets/images/icon/contact.png",
                          ),
                          Circle_avatar_Widget(
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Google_maps()),
                              );
                            },
                            name: "Map",
                            img: "assets/images/icon/map.png",
                          ),
                          Circle_avatar_Widget(
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Ugv_page()),
                              );
                            },
                            name: "UGV",
                            img: "assets/images/icon/edu.png",
                          ),
                          Circle_avatar_Widget(
                            function: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShowSchedule()),
                              );
                            },
                            name: "Schedule",
                            img: "assets/images/icon/she.png",
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Circle Avatar end .................................................................
                  // .......................................................................................

                  // Place and Route start .................................................................
                  // .......................................................................................

                  Text(
                    "Place & routes",
                    style: TextStyle(
                        fontSize: _height / 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.8)),
                  ),
                  Container(
                    height: _height / 4.8,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide1.jpg",
                          map_link:
                              'https://www.google.com/maps/place/University+of+Global+Village/@22.7061465,90.3500268,17z/data=!4m10!1m2!2m1!1sugv+maps!3m6!1s0x3755342394b62973:0x17e6bd03d1efe7f9!8m2!3d22.7072575!4d90.3522847!15sCgh1Z3YgbWFwc5IBEnByaXZhdGVfdW5pdmVyc2l0eeABAA!16s%2Fg%2F11j83hrbdz',
                        ),
                        SizedBox(
                          width: _width / 30,
                        ),
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide2.jpg",
                          map_link:
                              'https://www.google.com/maps/place/Gaurnadi+Upazila/@22.9801564,90.0904452,12z/data=!3m1!4b1!4m6!3m5!1s0x375541967f155531:0x8eb0488eb2adbd33!8m2!3d22.974329!4d90.2220861!16s%2Fm%2F0288ws8',
                        ),
                        SizedBox(
                          width: _width / 30,
                        ),
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide3.jpg",
                          map_link:
                              'https://www.google.com/maps/place/Mahilara+Bazar/@22.9290392,90.2387328,17z/data=!3m1!4b1!4m6!3m5!1s0x375541a9f86e0cf7:0x4563f040dd23c94c!8m2!3d22.9290392!4d90.2413077!16s%2Fg%2F11rd9v65_p',
                        ),
                        SizedBox(
                          width: _width / 30,
                        ),
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide4.jpg",
                          map_link:
                              'https://www.google.com/maps/place/Batajor/@22.9052435,90.2435982,16z/data=!3m1!4b1!4m6!3m5!1s0x375546ccb0c1bc61:0x5bb5bf9776c72fa0!8m2!3d22.9041967!4d90.2490964!16s%2Fm%2F04d_1ww',
                        ),
                        SizedBox(
                          width: _width / 30,
                        ),
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide5.jpg",
                          map_link:
                              'https://www.google.com/maps/place/Ichladi/@22.8282863,90.2566421,16z/data=!3m1!4b1!4m6!3m5!1s0x37554634aa6b715b:0x6c7652fd245b27ff!8m2!3d22.8297034!4d90.2608306!16s%2Fg%2F11g1lv78q2',
                        ),
                        SizedBox(
                          width: _width / 30,
                        ),
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide6.jpg",
                          map_link:
                              'https://www.google.com/maps/place/Asukathi/@22.9625723,90.2145302,15z/data=!3m1!4b1!4m6!3m5!1s0x3755418783c74e77:0xb5239fd012568eee!8m2!3d22.962573!4d90.2248299!16s%2Fg%2F11h9pdw25v',
                        ),
                        SizedBox(
                          width: _width / 30,
                        ),
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide7.jpg",
                          map_link:
                              'https://www.google.com/maps/place/%E0%A6%B8%E0%A6%BE%E0%A6%A4+%E0%A6%AE%E0%A6%BE%E0%A6%87%E0%A6%B2+%E0%A6%AE%E0%A7%8B%E0%A6%B9%E0%A6%A8%E0%A6%97%E0%A6%9E%E0%A7%8D%E0%A6%9C+%E0%A6%AC%E0%A6%BE%E0%A6%9C%E0%A6%BE%E0%A6%B0,+%E0%A6%AC%E0%A6%B0%E0%A6%BF%E0%A6%B6%E0%A6%BE%E0%A6%B2/@22.7771782,90.3051147,19.75z/data=!4m15!1m8!3m7!1s0x3755418783c74e77:0xb5239fd012568eee!2sAsukathi!3b1!8m2!3d22.962573!4d90.2248299!16s%2Fg%2F11h9pdw25v!3m5!1s0x3755373c7182e1d7:0x6f91d252f584232c!8m2!3d22.7773471!4d90.3052876!16s%2Fg%2F11tsk8rcgt',
                        ),
                        SizedBox(
                          width: _width / 30,
                        ),
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide8.jpg",
                          map_link:
                              'https://www.google.com/maps/place/Notunhat+Bus+Stand/@22.81726,90.2738064,19.04z/data=!4m15!1m8!3m7!1s0x3755418783c74e77:0xb5239fd012568eee!2sAsukathi!3b1!8m2!3d22.962573!4d90.2248299!16s%2Fg%2F11h9pdw25v!3m5!1s0x37554765ca89899d:0x5ae403a7afd2dc85!8m2!3d22.8178598!4d90.2727686!16s%2Fg%2F11fcl4w2x8',
                        ),
                        SizedBox(
                          width: _width / 30,
                        ),
                        PlaceRoutes_widget(
                          map_img: "assets/images/place/place-slide9.jpg",
                          map_link:
                              'https://www.google.com/maps/place/%E0%A6%B0%E0%A6%B9%E0%A6%AE%E0%A6%A4%E0%A6%AA%E0%A7%81%E0%A6%B0+%E0%A6%AC%E0%A6%BE%E0%A6%B8+%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A7%87%E0%A6%B6%E0%A6%A8/@22.7925354,90.2793788,14.04z/data=!4m15!1m8!3m7!1s0x3755418783c74e77:0xb5239fd012568eee!2sAsukathi!3b1!8m2!3d22.962573!4d90.2248299!16s%2Fg%2F11h9pdw25v!3m5!1s0x37553746a6ab6bed:0xecfcb1fdfa3e1d52!8m2!3d22.7905298!4d90.2999813!16s%2Fg%2F11fw8gdm6l',
                        ),
                      ],
                    ),
                  ),

                  // Place and Route End .................................................................
                  // .......................................................................................

                  SizedBox(
                    height: _height / 80,
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
