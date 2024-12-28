import 'package:flutter/material.dart';

class dropdown_widget extends StatefulWidget {
  const dropdown_widget({super.key});

  @override
  State<dropdown_widget> createState() => _dropdown_widgetState();
}

class _dropdown_widgetState extends State<dropdown_widget> {
  String selectedvalue = "orange";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dropdown List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(10),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                  dropdownColor: Colors.grey.shade300,
                  isExpanded: true,
                  value: selectedvalue,
                  icon: Icon(Icons.arrow_circle_down),
                  onChanged: (String? newvalue) {
                    setState(() {
                      selectedvalue = newvalue!;
                    });
                  },
                  items: <String>[
                    "orange",
                    "banana",
                    "apple",
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList()),
            )
          ],
        ),
      ),
    );
  }
}
