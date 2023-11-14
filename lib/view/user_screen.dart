import 'package:flutter/material.dart';
import 'package:instagram/view/home_screen.dart';

import '../utils/color_constant.dart';
import '../utils/image_constant.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(ImageConstant.logo),
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/user.png"),
              ),
            ),
            Container(
              width: 350,
              height: 76,
              decoration: BoxDecoration(
                color: Color(0xFF0195F7),
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                child: Text(
                  "Login as Abnormal Shift",
                  style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
