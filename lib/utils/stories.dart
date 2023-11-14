import 'package:flutter/material.dart';

import 'color_constant.dart';

class Stories extends StatelessWidget {
  Stories({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 40,
            foregroundColor: ColorConstant.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: ColorConstant.white, fontSize: 15),
        )
      ],
    );
  }
}
