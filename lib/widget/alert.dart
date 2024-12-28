// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class alert_widget extends StatefulWidget {
  const alert_widget({super.key});

  @override
  State<alert_widget> createState() => _alertWidgetState();
}

class _alertWidgetState extends State<alert_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("alert_page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _showMyDilog(context);
            },
            child: Text("gii")),
      ),
    );
  }
}

Future<void> _showMyDilog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("you are on the zero position how i know"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("demo"),
                Text("main goal is to make goal for you")
              ],
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("cancle")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context); 
                },
                child: Text("ok"))
          ],
        );
      });
}

