import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contact_Page extends StatelessWidget {
  const Contact_Page({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Contact"),
        ),
        body: Container(
          color: Color.fromRGBO(32, 80, 170, 1),
          height: _height,
          width: _width,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: _height / 100,
                  ),
                  Container(
                    height: _height / 2.2,
                    width: _width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(189, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: _height / 20,
                          ),
                          Container(
                            height: _height / 5,
                            width: _height / 5,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                shape: BoxShape.circle,
                                color: Colors.amber,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/people/driver.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: _height / 40,
                          ),
                          Text(
                            "Driver",
                            style: TextStyle(
                                fontSize: _height/30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Name : Md Milon",
                            style: TextStyle(
                                fontSize: _height/40, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Contact : 01778-336006",
                            style: TextStyle(
                                fontSize: _height/40, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _height / 100,
                  ),
                  Container(
                    height: _height / 2.2,
                    width: _width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(189, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: _height / 20,
                          ),
                          Container(
                            height: _height / 5,
                            width: _height / 5,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                shape: BoxShape.circle,
                                color: Colors.amber,
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/people/helper.jpg"),
                                    fit: BoxFit.fill)),
                          ),
                          SizedBox(
                            height: _height / 40,
                          ),
                          Text(
                            "Helper",
                            style: TextStyle(
                                fontSize: _height/30, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Name : Md Sumon",
                            style: TextStyle(
                                fontSize: _height/40, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Contact : 01796669756",
                            style: TextStyle(
                                fontSize: _height/40, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
