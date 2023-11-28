import 'package:flutter/material.dart';

navigateToNextScreen(context, nextScreen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => nextScreen),
  );
}