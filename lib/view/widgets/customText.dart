import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final Alignment alignment;
  const CustomText(
      {Key key,
       this.text,
       this.color,
      this.alignment = Alignment.topLeft,
       this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: fontSize),
      ),
    );
  }
}
