import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ugvbus/services/webView.dart';

class Ugv_page extends StatelessWidget {
  const Ugv_page({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(32, 80, 170, 1),
          body: Container(
        height: _height,
        width: _width,
        decoration: BoxDecoration(
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding:
                           EdgeInsets.all(_height/70),
                      child: Container(
                        child: Center(
                          child: Text(
                            "University Of Global Village",
                            style: TextStyle(
                                fontSize: _height / 31,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(15.0)),
                        height: _height / 10,
                        width: _width / 1.1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: _height / 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: _height / 1.39,
                    width: _width,
                    // color: Color.fromARGB(255, 85, 240, 54),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 60,
                        mainAxisSpacing: 20,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebviewScreen(
                                          link: 'https://ugv.edu.bd/',
                                        )),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.web,
                                    size: _height / 15,
                                    color: Colors.white,
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Website",
                                        style: TextStyle(
                                            fontSize: _height / 45,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebviewScreen(
                                          link:
                                              'https://webportal.ugv.edu.bd/LoginPage.aspx',
                                        )),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.photo_camera_front_outlined,
                                    size: _height / 15,
                                    color: Colors.white,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Portal",
                                      style: TextStyle(
                                          fontSize: _height / 45,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebviewScreen(
                                          link:
                                              'https://ugv.edu.bd/course/BSc%20in%20Computer%20Science%20&%20Engineering%20(CSE)/4',
                                        )),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.groups_rounded,
                                    size: _height / 15,
                                    color: Colors.white,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Department",
                                      style: TextStyle(
                                          fontSize: _height / 45,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebviewScreen(
                                          link: 'https://ugv.edu.bd/news-event',
                                        )),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.newspaper,
                                    size: _height / 15,
                                    color: Colors.white,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "News & Event",
                                      style: TextStyle(
                                          fontSize: _height / 45,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebviewScreen(
                                          link: 'https://iqac.ugv.edu.bd/',
                                        )),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.lightbulb,
                                    size: _height / 15,
                                    color: Colors.white,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "IQAC",
                                      style: TextStyle(
                                          fontSize: _height / 45,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => WebviewScreen(
                                          link: 'https://google.com',
                                        )),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(15.0)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.work_history_sharp,
                                    size: _height / 15,
                                    color: Colors.white,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Jobs",
                                      style: TextStyle(
                                          fontSize: _height / 45,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
