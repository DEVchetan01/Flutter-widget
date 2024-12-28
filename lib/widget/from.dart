import 'package:flutter/material.dart';

class form_widget extends StatefulWidget {
  const form_widget({super.key});

  @override
  State<form_widget> createState() => form_WidgetState();
}

class form_WidgetState extends State<form_widget> {
  final _formkey = GlobalKey<FormState>();
  String Firstname = '';
  String Lastname = '';
  String Email = '';
  String Passward = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "form",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 228, 181, 181),
      ),
      body: Center(
        // key: f,
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  key: ValueKey("Firstname"),
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "firstname should not be empty";
                    } else {
                      return null;
                    }
                  },
                )
              ],
            )),
        // ],
      ),
      // );
    );
  }
}
