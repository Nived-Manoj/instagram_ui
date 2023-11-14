import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue[300],
                  ),
                ),
                Text(
                  "spiritual_awake",
                  style: TextStyle(
                      color: ColorConstant.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(
              Icons.more_vert,
              color: ColorConstant.white,
            ),
          ],
        ),
        Container(
          height: 400,
          color: ColorConstant.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ImageIcon(AssetImage("assets/icons/Heart.png"),
                      color: ColorConstant.white),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: ImageIcon(AssetImage("assets/icons/Comment.png"),
                        color: ColorConstant.white),
                  ),
                  ImageIcon(AssetImage("assets/icons/share.png"),
                      color: ColorConstant.white),
                ],
              ),
              ImageIcon(AssetImage("assets/icons/save.png"),
                  color: ColorConstant.white),
            ],
          ),
        ),
        Row(
          children: [
            Text(
              "Liked by ",
              style: TextStyle(color: ColorConstant.white),
            ),
            Text(
              "abnormal_shift ",
              style: TextStyle(
                  color: ColorConstant.white, fontWeight: FontWeight.bold),
            ),
            Text(
              "and 2 ",
              style: TextStyle(color: ColorConstant.white),
            ),
            Text(
              "others ",
              style: TextStyle(
                  color: ColorConstant.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "spiritual_awake ",
              style: TextStyle(
                  color: ColorConstant.white, fontWeight: FontWeight.bold),
            ),
            Text(
              " Do what makes you happy. ",
              style: TextStyle(color: ColorConstant.white),
            ),
          ],
        ),
      ],
    );
  }
}
