import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';

class CustomMoneySection extends StatelessWidget {
  String title;
  dynamic icon;
  final bool haveSubtitle;

  final bool haveText;
  CustomMoneySection({
    required this.icon,
    required this.title,
    this.haveSubtitle = false,
    this.haveText = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: TextStyle(color: ColorConstants.mainBlack),
      ),
      subtitle: haveSubtitle
          ? Text(
              "Instant approved & paperless",
              style: TextStyle(color: ColorConstants.mainBlack),
            )
          : SizedBox(),
      trailing: haveText
          ? Text(
              "Apply Now",
              style: TextStyle(color: ColorConstants.lightBlue),
            )
          : Icon(Icons.arrow_forward_ios),
    );
  }
}
