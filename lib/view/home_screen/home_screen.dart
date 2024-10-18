import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';
import 'package:gpay_project/utils/constants/image_constants.dart';
import 'package:gpay_project/view/bank_balance_screen/bank_balance_screen.dart';
import 'package:gpay_project/view/dummy_db.dart';
import 'package:gpay_project/view/global_widget/custom_bills_card.dart';
import 'package:gpay_project/view/global_widget/custom_circle.dart';
import 'package:gpay_project/view/global_widget/custom_money_card.dart';
import 'package:gpay_project/view/global_widget/custom_search_bar.dart';
import 'package:gpay_project/view/global_widget/people_widget.dart';
import 'package:gpay_project/view/payment_screen/payment_screen.dart';
import 'package:gpay_project/view/profile_screen/profile_screen.dart';
import 'package:gpay_project/view/searchPayment_screen/searchPayment_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, t});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Custom_search_bar(
          text: "Pay by phone number or names",
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ));
              },
              child: CircleAvatar(
                child: Text(
                  'V',
                  style: TextStyle(color: ColorConstants.mainWhite),
                ),
                radius: 25,
                backgroundColor: ColorConstants.lightGreen,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildImageSection(),
            SizedBox(
              height: 11,
            ),
            _buildPaymentSection(),
            SizedBox(
              height: 10,
            ),
            _buildPeopleSection(),
            SizedBox(
              height: 10,
            ),
            _buildBusinesSection(),
            SizedBox(
              height: 10,
            ),
            _buildBillSection(),
            SizedBox(
              height: 10,
            ),
            _buildOfferSection(),
            SizedBox(height: 1),
            _buildManageMoneySection(context)
          ],
        ),
      ),
    );
  }

  Widget _buildManageMoneySection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Manage your Money",
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          CustomMoneySection(
            icon: Icon(
              Icons.mobile_friendly,
              color: ColorConstants.lightBlue,
            ),
            title: "Get a Loan",
            haveText: true,
            haveSubtitle: true,
          ),
          CustomMoneySection(
            icon: Icon(
              Icons.phone_iphone_sharp,
              color: ColorConstants.lightBlue,
            ),
            title: "Check your CIBIL score for free",
            haveText: false,
          ),
          CustomMoneySection(
            icon: Icon(
              Icons.mobile_off_outlined,
              color: ColorConstants.lightBlue,
            ),
            title: "See transaction history",
            haveText: false,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BankBalanceScreen(),
                  ));
            },
            child: CustomMoneySection(
              icon: Icon(
                Icons.money_rounded,
                color: ColorConstants.lightBlue,
              ),
              title: "Check bank balance",
              haveText: false,
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildOfferSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Offers & Rewards",
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
            child: GridView.builder(
              itemCount: DummyDb.offerList.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1, crossAxisSpacing: 1, crossAxisCount: 4),
              itemBuilder: (context, index) {
                return people_widget(
                  onTaped: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => PaymentScreen(
                    //           images: DummyDb.PeopleList[index]
                    //               ["images"],
                    //           names: DummyDb.PeopleList[index]
                    //               ["names"]),
                    //     ));
                  },
                  images: DummyDb.offerList[index]["images"],
                  names: DummyDb.offerList[index]["names"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildBillSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Bills & recharges",
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomBillsCard(
                    name: "mobile",
                    icon: Icon(
                      Icons.mobile_friendly,
                      color: Color.fromARGB(255, 113, 127, 145),
                    )),
                CustomBillsCard(
                    name: "DTH/Cable TV",
                    icon: Icon(
                      Icons.photo_camera_back_outlined,
                      color: Color.fromARGB(255, 113, 127, 145),
                    )),
                CustomBillsCard(
                    name: "Electricity",
                    icon: Icon(
                      Icons.electric_bolt_sharp,
                      color: Color.fromARGB(255, 113, 127, 145),
                    )),
                CustomBillsCard(
                    name: "FASTag\n recharge",
                    icon: Icon(
                      Icons.format_strikethrough,
                      color: Color.fromARGB(255, 113, 127, 145),
                    )),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 37,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorConstants.mainBlack, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "view all",
                style: TextStyle(color: ColorConstants.lightBlue),
              )),
            ),
          )
        ],
      ),
    );
  }

  Column _buildBusinesSection() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Businesses",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Explore  >",
                style: TextStyle(color: ColorConstants.lightBlue),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Custom_circle(
                text: "D",
                Color: Colors.pink,
                name: "dreams",
              ),
              Custom_circle(
                text: "A",
                Color: Colors.purple,
                name: "annie",
              ),
              Custom_circle(
                text: "V",
                Color: Colors.pink,
                name: "vi",
              ),
              Custom_circle(
                text: "▼",
                // icon: Icon(Icons.arrow_drop_down_sharp),
                Color: Colors.black54,
                name: "More",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding _buildPeopleSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "People",
            style: TextStyle(
                color: ColorConstants.mainBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 15),
            child: GridView.builder(
              itemCount: DummyDb.PeopleList.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1, crossAxisSpacing: 1, crossAxisCount: 4),
              itemBuilder: (context, index) {
                return people_widget(
                  onTaped: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(
                              images: DummyDb.PeopleList[index]["images"],
                              names: DummyDb.PeopleList[index]["names"]),
                        ));
                  },
                  images: DummyDb.PeopleList[index]["images"],
                  names: DummyDb.PeopleList[index]["names"],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildPaymentSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Custom_icon(
                icon: Icons.qr_code_scanner_outlined,
                text: "Scan any\n QR code",
              ),
              Custom_icon(icon: Icons.phone, text: "Pay \n contacts"),
              Custom_icon(
                  icon: Icons.document_scanner, text: "Pay phone \n numbers"),
              Custom_icon(
                  icon: Icons.food_bank_rounded, text: "Bank \n transfer"),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Custom_icon(
                icon: Icons.add_to_home_screen_outlined,
                text: "Pay UPI ID\n or number",
              ),
              Custom_icon(icon: Icons.contact_page, text: "Self \n transfer"),
              Custom_icon(
                  icon: Icons.phonelink_ring_outlined, text: "Pay  \n bills"),
              Custom_icon(
                  icon: Icons.mobile_screen_share_outlined,
                  text: "Mobile\n recharge"),
            ],
          )
        ],
      ),
    );
  }

  Container _buildImageSection() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(ImageConstants.GPAY_HEADER))),
    );
  }
}

class Custom_icon extends StatelessWidget {
  final String text;
  final dynamic icon;
  const Custom_icon({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 35,
          color: ColorConstants.lightBlue,
        ),
        Text(
          text,
        ),
      ],
    );
  }
}
