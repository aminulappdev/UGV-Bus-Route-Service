import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../services/webView.dart';

class PlaceRoutes_widget extends StatelessWidget {
  PlaceRoutes_widget({
    super.key,
    required this.map_img,
    required this.map_link,
  });

  final String map_img;
  final String map_link;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => WebviewScreen(
                      link: map_link,
                    )),
          );
        },
        child: Container(
          height: _height / 6,
          width: _width / 1.6,
          decoration: BoxDecoration(
              //color: Color.fromARGB(255, 65, 209, 241),
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                  image: AssetImage(map_img), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
