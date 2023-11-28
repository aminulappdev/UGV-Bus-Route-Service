// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:ugvbus/Pages/HomePage.dart';

// import '../Pages/route_page.dart';

// class Splashscreen
//  extends StatefulWidget {
//   const Splashscreen
//   ({super.key});

//   @override
//   State<Splashscreen> createState() => _SplashscreenState();
// }

// class _SplashscreenState extends State<Splashscreen> {
//   @override
//   void initState() {  
//     super.initState();
//     Future.delayed( const Duration(seconds: 3)).then((value) => {
//       Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx) => const Route_page()))
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//      double _width = MediaQuery.of(context).size.width;
//     double _height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         height: _height,
//         width: _width,
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage("assets/images/splash_screen.jpg"),fit: BoxFit.fill)
//         ),
//       ),
//     );
//   }
// }