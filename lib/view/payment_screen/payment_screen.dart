import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';
import 'package:gpay_project/view/dummy_db.dart';

class PaymentScreen extends StatelessWidget {
  dynamic images;
  String names;

  PaymentScreen({required this.images, required this.names, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(images),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(names), Text("9876543210")],
            ),
          ],
        ),
        actions: [
          Icon(Icons.phone),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text(
                  "Referal code",
                ),
                onTap: () {},
              ),
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Spacer(),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 44, 146, 158),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "pay",
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.normal),
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 75,
                  height: 25,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 44, 146, 158),
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    "request",
                    style: TextStyle(
                        fontSize: 16,
                        color: ColorConstants.mainBlack,
                        fontWeight: FontWeight.normal),
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        hintText: "Message",
                        suffixIcon: Icon(
                          Icons.play_arrow_outlined,
                          size: 28,
                        )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
