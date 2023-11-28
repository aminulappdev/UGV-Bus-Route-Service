import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Blank_page extends StatelessWidget {
  const Blank_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 80, 170, 1),
      body: Center(
        child: Text("Sorry! This service is not available at this time.",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}