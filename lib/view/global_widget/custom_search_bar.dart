import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';
import 'package:gpay_project/view/searchPayment_screen/searchPayment_screen.dart';

class Custom_search_bar extends StatelessWidget {
  final String text;

  const Custom_search_bar({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: ColorConstants.mainBlack,
                  width: 1,
                )),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: ColorConstants.mainBlack,
                  width: 1,
                )),
            prefixIcon: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SearchpaymentScreen()));
              },
              child: Icon(
                Icons.search,
                color: Color.fromARGB(255, 206, 201, 201),
              ),
            ),
            hintText: text),
      ),
    );
  }
}
