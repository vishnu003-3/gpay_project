import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';
import 'package:gpay_project/utils/constants/image_constants.dart';
import 'package:gpay_project/view/dummy_db.dart';
import 'package:gpay_project/view/global_widget/custom_search_bar.dart';
import 'package:gpay_project/view/global_widget/custom_searchupi.dart';

class SearchpaymentScreen extends StatelessWidget {
  const SearchpaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Custom_search_bar(text: "Pay anyone on UPI"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Get help"),
                onTap: () {},
              ),
              PopupMenuItem(
                child: Text("Send feedback"),
                onTap: () {},
              )
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent",
              style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 600,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: DummyDb.upiList.length,
                itemBuilder: (context, index) {
                  return Custom_SearchUpi(
                    images: DummyDb.upiList[index]["images"],
                    names: DummyDb.upiList[index]["names"],
                    subnames: DummyDb.upiList[index]["subnames"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
