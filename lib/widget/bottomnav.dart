import 'package:flutter/material.dart';
import 'package:learning/widget/alert.dart';
import 'package:learning/widget/animatedtext.dart';
import 'package:learning/widget/drawer.dart';
import 'package:learning/widget/snackbar.dart';

int selectedindex = 0;

class bottomnav_widget extends StatefulWidget {
  const bottomnav_widget({super.key});

  @override
  State<bottomnav_widget> createState() => _BottomNav_widgetState();
}

class _BottomNav_widgetState extends State<bottomnav_widget> {
  // List<Widget> widgets = [
  //   Text("Home"),
  //   Text("gift"),
  //   Text("upcoming"),
  //   Text("map"),
  // ];
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.grey[300],
        //   title: Text(
        //     "Bottom Nav Bar",
        //     style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
        //   ),
        // ),
        // body: Center(child: widgets.elementAt(selectedindex)),
        body: PageView(
          controller: pageController,
          children: [
            alert_widget(),
            // alertWidget(),
            animatedtext_widget(),
            snackbar_widget(),
            drawer_widget(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.gif_box), label: "gift"),
            BottomNavigationBarItem(
                icon: Icon(Icons.upcoming), label: "upcoming"),
            BottomNavigationBarItem(
                icon: Icon(Icons.maps_ugc_outlined), label: "map"),
          ],
          currentIndex: selectedindex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          onTap: onTapped,
        ));
  }
}
