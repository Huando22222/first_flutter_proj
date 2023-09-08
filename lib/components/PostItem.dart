import 'package:flutter/material.dart';
import 'package:flutter_application_test/styles/AppText.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/temp/Adtime.png",
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle1,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/temp/Adtime.png",
          ),
          Text("description", style: AppText.subtitle3),
        ],
      ),
    );
  }
}
