import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../Pages/admin/show_notice_page.dart';

class Circle_avatar_Widget extends StatelessWidget {
  Circle_avatar_Widget({super.key, required this.function, required this.name, required this.img});
 
   final VoidCallback function ;
   final String name;
   final String img;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Opacity(
          opacity: 0.8,
          child: Container(
            height: _height / 14,
            width: _height / 14,
            decoration:  BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 31, 174, 235),
                  Color.fromARGB(255, 250, 247, 247)
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: GestureDetector(
                onTap: function
                ,
                child: CircleAvatar(
                  backgroundColor:
                      Color.fromARGB(255, 202, 210, 226).withOpacity(0),
                  backgroundImage:
                      AssetImage(img),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            name,
            style: TextStyle(color: Colors.white.withOpacity(0.9)),
          ),
        )
      ],
    );
  }
}
