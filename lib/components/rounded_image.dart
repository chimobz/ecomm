import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    Key key,
    this.icon,
    this.press,
  }) : super(key: key);

  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:
           EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      //  padding: EdgeInsets.all(getProportionateScreenWidth(2)),
        height:70,
        width: 70,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Image.asset(icon,
        ),
      ),
    );
  }
}
