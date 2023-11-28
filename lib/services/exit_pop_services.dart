import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ExitPopService extends StatelessWidget {
  final Widget page;
  const ExitPopService(this.page, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPop() async {
      return await showDialog(
          context: context,
          builder: (buildContext) {
            return AlertDialog(
              title: const Text("Warning !"),
              content: const Text("Are you want to Exit ?"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("No"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (Platform.isIOS) {
                      exit(0);
                    } else {
                      SystemNavigator.pop();
                    }
                  },
                  child: const Text("Yes"),
                ),
              ],
            );
          });
    }

    return WillPopScope(child: page, onWillPop: showExitPop);
  }
}

class DialogShowService {
  showExitPop(context) async {
    return await showDialog(
        context: context,
        builder: (buildContext) {
          return AlertDialog(
            title: const Text("Warning !"),
            content: const Text("Are you want to Exit ?"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("No"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (Platform.isIOS) {
                    exit(0);
                  } else {
                    SystemNavigator.pop();
                  }
                },
                child: const Text("Yes"),
              ),
            ],
          );
        });
  }
}
