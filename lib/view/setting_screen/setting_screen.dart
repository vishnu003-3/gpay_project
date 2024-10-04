import 'package:flutter/material.dart';
import 'package:gpay_project/utils/constants/color_constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        padding: const EdgeInsets.all(8.0),
        child: _buildSettingSection(),
      ),
    );
  }

  Column _buildSettingSection() {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Settings",
              style: TextStyle(
                  color: ColorConstants.mainBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        CustomSettingIcons(
          icons: Icons.person_pin,
          text: "Personal info",
        ),
        SizedBox(
          height: 20,
        ),
        CustomSettingIcons(
          icons: Icons.notifications_none_rounded,
          text: "Notification & emails",
        ),
        SizedBox(
          height: 20,
        ),
        CustomSettingIcons(
          icons: Icons.security,
          text: "Privacy & security",
        ),
        SizedBox(
          height: 20,
        ),
        Divider(),
        SizedBox(
          height: 20,
        ),
        CustomSettingIcons(icons: Icons.error_outline_outlined, text: " About"),
        SizedBox(
          height: 20,
        ),
        CustomSettingIcons(
            icons: Icons.question_mark_rounded, text: " Help & feedback"),
        SizedBox(
          height: 20,
        ),
        CustomSettingIcons(
            icons: Icons.lock_outline_rounded, text: " Lock app"),
        SizedBox(
          height: 20,
        ),
        CustomSettingIcons(
            icons: Icons.power_settings_new_rounded, text: " Sign out"),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class CustomSettingIcons extends StatelessWidget {
  dynamic icons;
  String text;
  CustomSettingIcons({
    required this.icons,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icons,
          color: ColorConstants.lightBlue,
        ),
        Text(
          text,
          style: TextStyle(
            color: ColorConstants.mainBlack,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
