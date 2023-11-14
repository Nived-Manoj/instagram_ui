import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.black,
        leading: BackButton(
          color: ColorConstant.white,
        ),
        title: Text(
          "New Post",
          style: TextStyle(
              color: ColorConstant.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: ColorConstant.black,
      body: GridView.builder(
          itemCount: 15,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, Index) {
            return Padding(
              padding: EdgeInsets.all(3.0),
              child: Container(
                color: ColorConstant.grey,
                width: 100,
                height: 100,
              ),
            );
          }),
    );
  }
}
