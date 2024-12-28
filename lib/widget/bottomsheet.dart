import 'package:flutter/material.dart';

class bottomsheet_widget extends StatefulWidget {
  const bottomsheet_widget({super.key});

  @override
  State<bottomsheet_widget> createState() => _Bottom_sheetWidgetState();
}

class _Bottom_sheetWidgetState extends State<bottomsheet_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bottom_sheet",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        // isDismissible: false,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(2), topRight: Radius.circular(2))),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("orange"),
                          subtitle: Text("my friend"),
                        ),
                        ListTile(
                          title: Text("banana"),
                          subtitle: Text("my friend"),
                        ),
                        ListTile(
                          title: Text("graps"),
                          subtitle: Text("my friend"),
                        ),
                        ListTile(
                          title: Text("apple"),
                          subtitle: Text("my friend"),
                        ),
                        ListTile(
                          title: Text("mango"),
                          subtitle: Text("my friend"),
                        ),
                        ListTile(
                          title: Text("keeve"),
                          subtitle: Text("my friend"),
                        ),
                      ],
                    );
                  });
            },
            child: Text("show bottom_sheet")),
      ),
    );
  }
}
