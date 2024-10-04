import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';
import 'package:gpay_project/utils/constants/image_constants.dart';
import 'package:gpay_project/view/global_widget/custom_money_card.dart';
import 'package:gpay_project/view/setting_screen/setting_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _buildMenuButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(),
            SizedBox(
              height: 25,
            ),
            _buildSecondSection(),
            SizedBox(
              height: 25,
            ),
            _buildLastSection()
          ],
        ),
      ),
    );
  }

  Column _buildLastSection() {
    return Column(
      children: [
        CustomMoneySection(
          icon: Icon(
            Icons.home,
            color: ColorConstants.lightBlue,
            size: 35,
          ),
          title: "Pay with credit or debit cards",
          haveText: false,
        ),
        CustomMoneySection(
          icon: Icon(
            Icons.qr_code,
            color: ColorConstants.lightBlue,
            size: 35,
          ),
          title: "Your QR code",
          haveText: false,
        ),
        CustomMoneySection(
          icon: Icon(
            Icons.format_indent_increase_rounded,
            color: ColorConstants.lightBlue,
            size: 35,
          ),
          title: "Invite friends, get reward",
          haveText: false,
        ),
        CustomMoneySection(
          icon: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingScreen(),
                  ));
            },
            child: Icon(
              Icons.settings,
              color: ColorConstants.lightBlue,
              size: 35,
            ),
          ),
          title: "Settings",
          haveText: false,
        ),
        CustomMoneySection(
          icon: Icon(
            Icons.account_box_rounded,
            color: ColorConstants.lightBlue,
            size: 35,
          ),
          title: "Manage Google account",
          haveText: false,
        ),
        CustomMoneySection(
          icon: Icon(
            Icons.star_border_purple500_outlined,
            color: ColorConstants.lightBlue,
            size: 35,
          ),
          title: "Your reviews and ratings",
          haveText: false,
        ),
        CustomMoneySection(
          icon: Icon(
            Icons.help,
            color: ColorConstants.lightBlue,
            size: 35,
          ),
          title: "Get help",
          haveText: false,
        ),
        CustomMoneySection(
          icon: Icon(
            Icons.language,
            color: ColorConstants.lightBlue,
            size: 35,
          ),
          title: "Language",
          haveText: false,
        ),
      ],
    );
  }

  Padding _buildSecondSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color.fromARGB(180, 240, 229, 229),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Set up payment methods 1/3",
                      style: TextStyle(
                          color: ColorConstants.mainBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.home_filled,
                        size: 40,
                        color: ColorConstants.lightBlue,
                      ),
                      Text(
                        "Bank Account",
                        style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 40,
                        color: ColorConstants.lightBlue,
                      ),
                      Text("RuPay credit card",
                          style: TextStyle(
                              color: ColorConstants.mainBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.normal))
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.dry_rounded,
                        size: 40,
                        color: ColorConstants.lightBlue,
                      ),
                      Text("UPI lite",
                          style: TextStyle(
                              color: ColorConstants.mainBlack,
                              fontSize: 16,
                              fontWeight: FontWeight.normal))
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildProfileHeader() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "VISHNU NARAYANAN",
              style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("UP ID:",
                    style: TextStyle(
                        color: ColorConstants.mainBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.bold)),
                CircleAvatar(
                  child: Text(
                    'V',
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                  radius: 25,
                  backgroundColor: ColorConstants.lightGreen,
                ),
              ],
            ),
            Text("vishnunarayanan304@-1@okaxis",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
            Text("7896541230  ",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 12,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(ImageConstants.GPAY_HEADER),
        ),
      ),
    );
  }

  PopupMenuButton<dynamic> _buildMenuButton() {
    return PopupMenuButton(
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
    );
  }
}
