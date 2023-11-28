import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'option_page.dart';

class Adminpanel_page extends StatefulWidget {
  const Adminpanel_page({super.key});

  @override
  State<Adminpanel_page> createState() => _Adminpanel_pageState();
}

class _Adminpanel_pageState extends State<Adminpanel_page> {
  final adminCntrl = TextEditingController();
  final passCntrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void validateAndSave() {
    final form = _formKey.currentState;
    if (form!.validate() &&
        adminCntrl.text == "admin" &&
        passCntrl.text == "ugv@1234") {
      adminCntrl.clear();
      passCntrl.clear();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Option_page()),
      );
      print("done");
    } else {
      adminCntrl.clear();
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
                  height: _height / 2,
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
                              "Admin Panel",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: _height / 40,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Admin Name";
                                }
                                return null;
                              },
                              controller: adminCntrl,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  hintText: "Admin"),
                            ),
                            SizedBox(
                              height: _height / 50,
                            ),
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Password";
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
                                  hintText: "Password"),
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
                  "Only use for admin",
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
