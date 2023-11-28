import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:ugvbus/Pages/admin/show_notice_page.dart';
import 'package:ugvbus/Pages/admin/show_pic.dart';

class Tabview extends StatelessWidget {
  const Tabview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Material(
            color: Colors.white,
            child: TabBar(
              unselectedLabelColor: Colors.red[200],
              labelColor: Colors.blue, tabs: [
              Tab(
                icon: Icon(Icons.sms),
                text: 'Text',
              ),
              Tab(
                icon: Icon(Icons.image),
                text: 'Image 1',
              ),         
            ])),
        body: TabBarView(children: [
          Show_notice_page(),
          ShowPicture(),
        ]),
      ),
    ));
  }
}
