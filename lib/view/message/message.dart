import 'package:flutter/material.dart';
import 'package:instagram/utils/chat.dart';
import 'package:instagram/utils/color_constant.dart';
import 'package:instagram/utils/stories.dart';

class Message extends StatelessWidget {
  Message({super.key});
  final List peopleS = [
    "john",
    "james",
    "sunny",
    "kitty",
    " Bob",
  ];
  final List message = [
    'gwfdw',
    'gwfdw',
    "edegyh",
    "hgwfh",
    "edegyh",
    'gwfdw',
    "edegyh",
    "hgwfh",
    "hgwfh",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: ColorConstant.black,
        title: Row(
          children: [
            Text(
              "abnormal_shift",
              style: TextStyle(color: ColorConstant.white),
            ),
            SizedBox(
              width: 40,
              child: ImageIcon(
                AssetImage("assets/icons/scroll.png"),
                size: 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, right: 20),
              child: ImageIcon(
                AssetImage("assets/icons/video.png"),
                size: 20,
              ),
            ),
            ImageIcon(
              AssetImage("assets/icons/Story.png"),
              size: 20,
            ),
          ],
        ),
      ),
      backgroundColor: ColorConstant.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 4,
            ),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: ColorConstant.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: peopleS.length,
              itemBuilder: (context, index) {
                return Stories(text: peopleS[index]);
              },
            ),
          ),
          SizedBox(
            height: 593,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: message.length,
              itemBuilder: (context, index) {
                return Chat(
                  text: message[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
