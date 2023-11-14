import 'package:flutter/material.dart';
import 'package:instagram/utils/color_constant.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.black,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: ColorConstant.grey,
            borderRadius: BorderRadius.circular(15),
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
      backgroundColor: ColorConstant.black,
      body: GridView.builder(
          itemCount: 70,
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
