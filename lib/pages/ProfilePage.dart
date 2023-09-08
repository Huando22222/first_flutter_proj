import 'package:flutter/material.dart';
import 'package:flutter_application_test/components/ToolBar.dart';
import 'package:flutter_application_test/components/UserAvatar.dart';
import 'package:flutter_application_test/config/AppRoutes.dart';
import 'package:flutter_application_test/config/AppString.dart';
import 'package:flutter_application_test/styles/AppText.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  break;
                case ProfileMenu.logout:
                  print("logout");
                  break;
                default:
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      Text("Edit"),
                    ],
                  ),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      Text("Logout"),
                    ],
                  ),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          UserAvatar(
            size: 90,
          ),
          Text(
            "Huan do ",
            style: AppText.header1,
          ),
          Text(
            "Subcripe",
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "341",
                    style: AppText.header1,
                  ),
                  Text(
                    "followers",
                    style: AppText.subtitle1,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "217",
                    style: AppText.header1,
                  ),
                  Text(
                    "Posts",
                    style: AppText.subtitle1,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "12",
                    style: AppText.header1,
                  ),
                  Text(
                    "folowing",
                    style: AppText.subtitle1,
                  ),
                ],
              ),
            ],
          ),
          Divider(thickness: 2, height: 20),
        ],
      ),
    );
  }
}
