import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:ugvbus/Pages/Others/HomePage.dart';
import 'package:ugvbus/Pages/admin/dynamic_schedule.dart';
import 'package:ugvbus/Pages/admin/notice.dart';
import 'package:ugvbus/services/exit_pop_services.dart';

class Option_page extends StatelessWidget {
   Option_page({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Admin Panel"),
          leading: IconButton(
              onPressed: () {            
                
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          height: _height,
          width: _width,
          color: Color.fromRGBO(32, 80, 170, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Dynamic_schedule()),
                      );
                    },
                    child: Text(
                      "  Schedule  ",
                      style: TextStyle(
                          fontSize: _height / 40,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Notice_page()),
                      );
                    },
                    child: Text(
                      " Send notice",
                      style: TextStyle(
                          fontSize: _height / 40,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
