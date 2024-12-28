import 'package:flutter/material.dart';

class button_widget extends StatelessWidget {
  const button_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text("button"),
        backgroundColor: Color.fromARGB(255, 53, 88, 7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.black),
                  elevation: MaterialStateProperty.all(70),
                  backgroundColor: MaterialStateProperty.all(Colors.blue)),
              onPressed: () {},
              child: Text(
                "press me",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 150,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                  ),
                  onPressed: () {
                    print("like");
                  },
                  child: Text(
                    "press me",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
