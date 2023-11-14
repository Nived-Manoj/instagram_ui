import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant.dart';

class Chat extends StatelessWidget {
  Chat({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
              color: ColorConstant.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        trailing: ImageIcon(
            AssetImage(
              "assets/icons/camera.png",
            ),
            color: ColorConstant.white),
        leading: CircleAvatar(
          radius: 30,
          foregroundColor: ColorConstant.grey,
        ),
        subtitle: Text(
          "2 new messages",
          style: TextStyle(color: ColorConstant.white, fontSize: 16),
        ),
      ),
    );
  }
}
