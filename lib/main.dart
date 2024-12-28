import 'package:flutter/material.dart';
import 'package:learning/widget/alert.dart';
import 'package:learning/widget/animatedtext.dart';
import 'package:learning/widget/bottomnav.dart';
import 'package:learning/widget/bottomsheet.dart';
import 'package:learning/widget/button.dart';
import 'package:learning/widget/container_size.dart';
import 'package:learning/widget/dismissible.dart';
import 'package:learning/widget/drawer.dart';
import 'package:learning/widget/dropdown.dart';
import 'package:learning/widget/from.dart';
import 'package:learning/widget/image.dart';
import 'package:learning/widget/list.dart';
import 'package:learning/widget/row_col.dart';
import 'package:learning/widget/snackbar.dart';
import 'package:learning/widget/stack.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          // primaryColor: Colors.blue[200],
        ),
        home: const alert_widget());
  }
}
