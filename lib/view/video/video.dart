import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant.dart';

class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.black,
        leading: BackButton(
          color: ColorConstant.white,
        ),
        title: Text(
          "Reels",
          style: TextStyle(
              color: ColorConstant.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: ColorConstant.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 370, bottom: 18),
            child: ImageIcon(AssetImage("assets/icons/Heart.png"),
                color: ColorConstant.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 370, bottom: 18),
            child: ImageIcon(AssetImage("assets/icons/Comment.png"),
                color: ColorConstant.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 370, bottom: 18),
            child: ImageIcon(AssetImage("assets/icons/share.png"),
                color: ColorConstant.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 375, bottom: 10),
            child: Icon(
              Icons.more_vert,
              color: ColorConstant.white,
            ),
          ),
        ],
      ),
    );
  }
}
