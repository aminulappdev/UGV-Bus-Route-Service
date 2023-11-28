import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ugvbus/Pages/Location/realtime_test.dart';

class Security_page extends StatefulWidget {
  const Security_page({super.key});

  @override
  State<Security_page> createState() => _Security_pageState();
}

class _Security_pageState extends State<Security_page> {
  
  final passCntrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate() &&  
        passCntrl.text == "ugv@1234") {
      passCntrl.clear();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Realtime_test()),
      );
      print("done");
    } else {
    
      passCntrl.clear();
      Fluttertoast.showToast(
          msg: "Incorrect",
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Colors.red,
          textColor: Colors.black,
          gravity: ToastGravity.BOTTOM);
    }
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromRGBO(32, 80, 170, 1),
          height: _height,
          width: _width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: _height / 10,
                ),
                Container(
                  height: _height / 3,
                  width: _width / 1.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.all(_height / 70),
                    child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Student Panel",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: _height / 40,
                            ),                          
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Security code";
                                }
                                return null;
                              },
                              controller: passCntrl,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText: "Security code"),
                            ),
                            SizedBox(
                              height: _height / 40,
                            ),
                            ElevatedButton(
                                onPressed: validateAndSave,
                                child: const Text("Submit")),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: _height / 50,
                ),
                const Text(
                  "Only use for ugv students",
                  style: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
