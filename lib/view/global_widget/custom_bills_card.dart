import 'package:flutter/material.dart';

class CustomBillsCard extends StatelessWidget {
  final dynamic icon;
  final String name;

  const CustomBillsCard({
    required this.name,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: icon,
          backgroundColor: Color.fromARGB(255, 57, 102, 138),
        ),
        Text(name),
      ],
    );
  }
}
