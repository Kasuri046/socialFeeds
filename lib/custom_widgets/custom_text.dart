import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final dynamic text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final bool isBold;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : fontWeight,
        color: color,
      ),
    );
  }
}
