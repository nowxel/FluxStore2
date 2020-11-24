import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';

import 'size_box.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDot(color: Color(0xFF356C95),),
                  ColorDot(color: Color(0xFFF8C078),),
                  ColorDot(color: Color(0xFFA29B9B), isSelected: true),
                ],
              )
            ],
          ),
        ),
        SizeBox()
      ],
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return Column(

    );
  }


class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key, this.color,
    // by defaulf isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 8 / 4,
          right: 8/2
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
            color: isSelected ? color : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

