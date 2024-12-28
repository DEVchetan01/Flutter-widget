import 'package:flutter/material.dart';

class stack_widget extends StatefulWidget {
  const stack_widget({super.key});

  @override
  State<stack_widget> createState() => _stack_widgetState();
}

class _stack_widgetState extends State<stack_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Stack",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 236, 176, 176),
        child: Center(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 400,
                  width: 400,
                  color: Colors.yellow,
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
