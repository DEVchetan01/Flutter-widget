import 'package:flutter/material.dart';

class snackbar_widget extends StatelessWidget {
  const snackbar_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar_Page"),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              // ignore: unused_local_variable
              final snackBar = SnackBar(
                action: SnackBarAction(
                  label: "undo",
                  textColor: Colors.black,
                  onPressed: () {},
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)),
                behavior: SnackBarBehavior.floating,
                padding: EdgeInsets.all(10),
                backgroundColor: Colors.blue[300],
                duration: const Duration(milliseconds: 2500),
                content: Text("you are on the write place"),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text("show snapbar"),
          ),
        ),
      ),
    );
  }
}
