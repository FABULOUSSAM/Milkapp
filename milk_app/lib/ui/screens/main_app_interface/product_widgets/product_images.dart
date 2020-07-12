import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int image_number = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _images(),
//        _images_dots(),
      ],
    );
  }

  Widget _images() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/backgorund.gif"
            ),
          );
        },
      ),
    );
  }

  Widget _images_dots() {
    return CircleAvatar(
    );
  }
}
