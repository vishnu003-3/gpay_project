import 'package:flutter/material.dart';
import 'package:gpay_project/view/dummy_db.dart';

class Custom_SearchUpi extends StatelessWidget {
  final String images;
  final String names;
  final String subnames;

  Custom_SearchUpi({
    required this.images,
    required this.names,
    required this.subnames,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(images),
          radius: 30,
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(names, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(subnames, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
