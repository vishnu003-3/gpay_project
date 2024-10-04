import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';

class Custom_circle extends StatelessWidget {
  final String? text;
  final dynamic? icon;
  final String name;
  final Color;
  const Custom_circle({
    required this.name,
    this.Color,
    this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: icon,
          backgroundColor: Color,
          child: Text(
            text!,
            style: TextStyle(fontSize: 30, color: ColorConstants.mainWhite),
          ),
        ),
        Text(name),
      ],
    );
  }
}
