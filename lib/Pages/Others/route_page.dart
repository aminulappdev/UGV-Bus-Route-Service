import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ugvbus/Pages/Others/HomePage.dart';
import 'package:ugvbus/Pages/Others/blank_page.dart';

class Route_page extends StatelessWidget {
  const Route_page({super.key});

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
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: _height/5,),
                      Container(
                        height: _height / 1.7,
                        width: _width,
                        //color: Color.fromARGB(255, 85, 240, 54),
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
                                        builder: (context) => MyHomePage()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue[600],
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: _height / 13,
                                        width: _height / 8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/bus/busicon.png"),
                                              fit: BoxFit.fill),
                                          color: Colors.blue[600],
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Bus-1",
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
                                        builder: (context) => Blank_page()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue[600],
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: _height / 13,
                                        width: _height / 8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/bus/busicon.png"),
                                              fit: BoxFit.fill),
                                          color: Colors.blue[600],
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Bus-2",
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
                                        builder: (context) => Blank_page()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue[600],
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: _height / 13,
                                        width: _height / 8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/bus/busicon.png"),
                                              fit: BoxFit.fill),
                                          color: Colors.blue[600],
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Bus-3",
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
                                        builder: (context) => Blank_page()),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.blue[600],
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: _height / 13,
                                        width: _height / 8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/bus/busicon.png"),
                                              fit: BoxFit.fill),
                                          color: Colors.blue[600],
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Bus-4",
                                            style: TextStyle(
                                                fontSize: _height / 45,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.white),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: _height/30,),
                      const Text("Chocice your bus options",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
