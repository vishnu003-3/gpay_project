import 'package:flutter/material.dart';
import 'package:gpay_project/view/payment_screen/payment_screen.dart';
import 'package:gpay_project/view/splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
