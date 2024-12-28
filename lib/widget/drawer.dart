import 'package:flutter/material.dart';

class drawer_widget extends StatefulWidget {
  const drawer_widget({super.key});

  @override
  State<drawer_widget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<drawer_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          // color: Theme.of(context).primaryColorLight,
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                    // color: Colors.red,
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              "https://m.media-amazon.com/images/I/519E19K-kvL._AC_UF1000,1000_QL80_.jpg"),
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("my folder"),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("share"),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("contact"),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("information"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("about"),
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("emence"),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Drawer"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text(
            "hey there",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
