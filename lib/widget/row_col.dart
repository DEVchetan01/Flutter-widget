import 'package:flutter/material.dart';

class row_col_widget extends StatelessWidget {
  const row_col_widget({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        title: Text("rows and cols"),
      ),
      body: Container(
        height: h,
        width: w,
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 60,
              color: Colors.pink,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.green,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.purple,
            ),
            Container(
              height: 60,
              width: 60,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
