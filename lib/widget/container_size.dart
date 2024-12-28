import 'package:flutter/material.dart';

class container_size_widget extends StatelessWidget {
  const container_size_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('main app'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          // color: const Color.fromARGB(255, 24, 46, 65),
          // child: Center(
          // child: SizedBox(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.amber,
              boxShadow: [
                BoxShadow(blurRadius: 30, spreadRadius: 20, color: Colors.white)
              ],
              // shape: BoxShape.circle
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              'text my ',
              style: TextStyle(fontSize: 20),
            ),
          ),
          // ),
        ),
      ),
    );
    // );
  }
}
