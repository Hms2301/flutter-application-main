import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_application_main/util/settings_tile.dart';

class userSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              SettingsTile(
                color: Colors.blue,
                icon: Icons.account_circle,
                title: "Account",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.green,
                icon: Icons.edit,
                title: "Edit Information",
                onTap: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                color: Colors.black,
                icon: Icons.format_paint,
                title: "Theme",
                onTap: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              SettingsTile(
                color: Colors.purple,
                icon: Icons.language,
                title: "Language",
                onTap: () {},
              ),
              const SizedBox(
                height: 40,
              ),
              SettingsTile(
                color: Colors.red,
                icon: Icons.logout,
                title: "Logout",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
