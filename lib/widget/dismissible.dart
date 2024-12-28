
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class dismissible_widget extends StatefulWidget {
  const dismissible_widget({super.key});

  @override
  State<dismissible_widget> createState() => _DismissiblesWidgetState();
}

class _DismissiblesWidgetState extends State<dismissible_widget> {
  List<String> fruits = ["mango", "banana", "apple", "graps", "mango"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300],
      appBar: AppBar(
        title: Text("Dismissables"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          final fruit = fruits[index];
          return Dismissible(
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(fruits[index]),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)),
                ));
              } else
                ;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(fruits[index]),
                backgroundColor: Colors.green,
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                // padding: EdgeInsets.all(20),
              ));
            },
            key: Key(fruit),
            background: Container(
              color: Colors.red,
            ),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: Card(
              child: ListTile(
                  title: Text(
                fruits[index],
              )),
            ),
          );
        },
      ),
    );
  }
}
