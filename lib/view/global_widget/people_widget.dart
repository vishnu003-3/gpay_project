import 'package:flutter/material.dart';

class people_widget extends StatelessWidget {
  String images;
  String names;
  void Function()? onTaped;
  people_widget({
    required this.images,
    required this.names,
    super.key,
    this.onTaped,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTaped,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(
              images,
            ),
          ),
          Text(names),
        ],
      ),
    );
  }
}
