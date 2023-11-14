import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant.dart';
import 'package:instagram/utils/image_constant.dart';
import 'package:instagram/utils/post.dart';
import 'package:instagram/utils/stories.dart';
import 'package:instagram/view/message/message.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List people = [
    "john",
    "james",
    "sunny",
    "kitty",
    " Bob",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              ImageConstant.logo,
              scale: 3,
            ),
            Row(
              children: [
                Icon(Icons.favorite_border_outlined),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    child: Image.asset("assets/icons/Layer 1.png", scale: 3),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Message(),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: ColorConstant.black,
      body: Column(
        children: [
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Stories(text: people[index]);
              },
            ),
          ),
          SizedBox(
            height: 574,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Posts();
              },
            ),
          ),
        ],
      ),
    );
  }
}
