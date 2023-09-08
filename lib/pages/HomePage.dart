import 'package:flutter/material.dart';
import 'package:flutter_application_test/components/PostItem.dart';
import 'package:flutter_application_test/components/ToolBar.dart';
import 'package:flutter_application_test/styles/AppColors.dart';
import 'package:flutter_application_test/styles/AppText.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: ToolBar(
        title: "flutter",
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.location_on),
          ),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(
            user: users[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 20,
          );
        },
        itemCount: users.length,
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      // users.add(PostItem());
      users.add("user number $i");
    }
  }
}
