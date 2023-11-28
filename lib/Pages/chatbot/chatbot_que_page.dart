import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';


class Chatbot_que_page extends StatefulWidget {
  const Chatbot_que_page({super.key});

  @override
  State<Chatbot_que_page> createState() => _Chatbot_que_pageState();
}

class _Chatbot_que_pageState extends State<Chatbot_que_page> {
  var ans = "Any Query";
  var ans_color1 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
  var ans_color2 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
  var ans_color3 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Chatbot"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            color: Color.fromRGBO(32, 80, 170, 1),
            height: _height,
            width: _width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          ans =
                              "University of Global village is a well-known private university in Barisal. It has so many digital facilities for students like a digital library, computer lab, robotics lab, cafeteria, and transport service. It has a bus that picks up students from different stoppage places in Barisal. And it also down drops students to their home destination. This service helps students to avoid traffic jams, save valuable time in changing vehicles, and avoid public transport crowds. It is very clean, non-crowdy, and well-seated. The students feel relaxed and safe which helps their mental health.";
                          ans_color1 = Color.fromARGB(255, 144, 207, 238);
                          ans_color2 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
                          ans_color3 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                    color: ans_color1,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "I want to know About UGV Bus.",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: _height / 40,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          ans =
                              "Sumon Mia – 01993522285\nRussell Sarder – 01778336006";
                          ans_color2 = Color.fromARGB(255, 144, 207, 238);
                          ans_color1 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
                          ans_color3 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                    color: ans_color2,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "How can I locate the UGV bus?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: _height / 40,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          ans =
                              "The first skill-based hi-tech private university in Bangladesh\n874/322, C&B Road 8200 Barisal, Barisal Division, Bangladesh\nPlease visit: https://ugv.edu.bd/";
                          ans_color3 = Color.fromARGB(255, 144, 207, 238);
                          ans_color1 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
                          ans_color2 = Color.fromARGB(255, 255, 255, 255).withOpacity(0.8);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                    color: ans_color3,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    "I want to know about UGV.",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: _height / 40,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: _height / 100,
                      ),
                      Text(
                        "Click your questions",
                        style: TextStyle(
                            fontSize: _height / 50, color: Colors.white),
                      ),
                      SizedBox(
                        height: _height / 20,
                      ),
                      Container(
                        height: _height / 10,
                        width: _height / 10,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/icon/chatbot.png"),
                                fit: BoxFit.fill),
                            color: Colors.amber,
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        height: _height / 50,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 144, 207, 238),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ans,
                            style: TextStyle(
                              fontSize: _height / 45,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
