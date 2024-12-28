// import 'dart:ffi';

// import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class animatedtext_widget extends StatefulWidget {
  const animatedtext_widget({super.key});

  @override
  State<animatedtext_widget> createState() => _animatextState();
}

class _animatextState extends State<animatedtext_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Text"),
        backgroundColor: const Color.fromARGB(255, 145, 207, 238),
        titleTextStyle: TextStyle(
            color: Colors.green[900],
            fontSize: 25,
            fontWeight: FontWeight.bold),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText("Hii this is my animation",
                      textStyle: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      speed: Duration(milliseconds: 300))
                ],
                totalRepeatCount: 4,
                pause: Duration(milliseconds: 300),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              AnimatedTextKit(animatedTexts: [
                RotateAnimatedText("Animate the world of art",
                    textStyle: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w100,
                        fontStyle: FontStyle.normal)),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
