import 'package:flutter/material.dart';
// also known as listgrid widget 
class list_widget extends StatefulWidget {
  const list_widget({super.key});

  @override
  State<list_widget> createState() => _ListGridState();
}

class _ListGridState extends State<list_widget> {
  List<String> fruits = ['orange', "banana", "apple", "berry"];
  Map fruits_map = {
    'fruits': ['orange', 'bananaa', 'apple', 'berry'],
    'color': ['orange', 'yellow', 'red', 'red']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("hii list"),
        backgroundColor: Colors.red[300],
        elevation: 8,
        shadowColor: Colors.yellow,
      ),
      body: Container(
        // child: ListView.builder(
        //   itemCount: fruits.length,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: ListTile(
        //         leading: Icon(Icons.apple_sharp),
        //         title: Text(fruits_map['fruits'][index]),
        //         subtitle: Text(fruits_map['color'][index]),
        //       ),
        //     );
        //   },
        // ),

        // child: GridView(
        //   gridDelegate:
        //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //   children: [
        //     Card(child: Text("hii")),
        //   ],
        // ),

        child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(fruits_map['fruits'][index]),
                  subtitle: Text(fruits_map['color'][index]),
                  // child: Text(fruits[index]),
                ),
              );
            }),
      ),
    );
  }
}





