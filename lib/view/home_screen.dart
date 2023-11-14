import 'package:flutter/material.dart';
import 'package:instagram/view/create/create.dart';
import 'package:instagram/view/home/home.dart';
import 'package:instagram/view/profile/profile.dart';
import 'package:instagram/view/search/search.dart';
import 'package:instagram/view/video/video.dart';

import '../utils/color_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndex = 0;
  List<Widget> WidgetList = [
    Home(),
    Search(),
    Create(),
    Video(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.black,
      body: WidgetList[SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: SelectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: ColorConstant.white,
        unselectedIconTheme: IconThemeData(color: Colors.white),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          SelectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/Vector (2).png"),
                size: 30,
              ),
              label: "   Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/Group 9.png"),
                size: 30,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/Story.png"),
                size: 30,
              ),
              label: "Create"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/Group 15.png"),
                size: 30,
              ),
              label: "Video"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                size: 38,
              ),
              label: "Profile"),
        ],
      ),
    );
  }
}
