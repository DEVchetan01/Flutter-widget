import 'package:flutter/material.dart';

class image_widget extends StatelessWidget {
  const image_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("doramon"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.shutterstock.com/image-vector/jakartaindonesia-september-28-2023-vector-600nw-2367987941.jpg"),
                fit: BoxFit.cover,
              ),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20)),
          // child: Image.network(
          //   "https://www.shutterstock.com/image-vector/jakartaindonesia-september-28-2023-vector-600nw-2367987941.jpg",
          // fit: BoxFit.cover,
          // ),
        ),
      ),
    );
  }
}
