import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';

class BankBalanceScreen extends StatelessWidget {
  const BankBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildBalanceSection(),
      ),
    );
  }

  Column _buildBalanceSection() {
    return Column(
      children: [
        Text(
          "Bank balance",
          style: TextStyle(
              color: ColorConstants.mainBlack,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "₹99999999",
          style: TextStyle(
              color: ColorConstants.mainBlack,
              fontSize: 25,
              fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 15,
        ),
        Text("Savings account"),
        Text("Canara Bank 0557")
      ],
    );
  }
}
