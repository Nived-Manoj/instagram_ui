import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant.dart';
import 'package:instagram/utils/stories.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final List highlight = [
    "Trip",
    "Meh",
    "Works",
    "Foods",
    "Party ",
    "Nature",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 40,
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
                padding: const EdgeInsets.only(left: 139, right: 20),
                child: ImageIcon(
                  AssetImage("assets/icons/Story.png"),
                  size: 20,
                ),
              ),
              ImageIcon(
                AssetImage("assets/icons/More.png"),
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
                top: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 50,
                  ),
                  Column(
                    children: [
                      Text(
                        "120",
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Text("Posts",
                          style: TextStyle(
                              color: ColorConstant.white, fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "4530",
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Text("Followers",
                          style: TextStyle(
                              color: ColorConstant.white, fontSize: 16)),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "365",
                        style: TextStyle(
                          color: ColorConstant.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Text("Following",
                          style: TextStyle(
                              color: ColorConstant.white, fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nived",
                          style: TextStyle(
                              color: ColorConstant.white, fontSize: 20)),
                      Text("Flutter developer",
                          style: TextStyle(
                              color: ColorConstant.white, fontSize: 20)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 35,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.grey,
                    ),
                    child: Center(
                      child: Text(
                        "Edit profile",
                        style:
                            TextStyle(color: ColorConstant.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.grey,
                    ),
                    child: Center(
                      child: Text(
                        "Share profile",
                        style:
                            TextStyle(color: ColorConstant.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ColorConstant.grey,
                    ),
                    child: Center(
                      child: ImageIcon(
                        AssetImage(
                          "assets/icons/scroll.png",
                        ),
                        size: 20,
                        color: ColorConstant.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: highlight.length,
                itemBuilder: (context, index) {
                  return Stories(text: highlight[index]);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: ImageIcon(
                    AssetImage("assets/icons/photos.png"),
                    color: ColorConstant.white,
                    size: 30,
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: ImageIcon(
                    AssetImage("assets/icons/tags.png"),
                    color: ColorConstant.white,
                    size: 30,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
