import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final String? title;
  final double? size;
  final Color? color;
  final FontWeight? fontWeight;

  const CustomText({
    Key? key,
    this.title,
    this.size,
    this.color,
    this.fontWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 16.0,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
