import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double size;
  final double radius;
  const UserAvatar({super.key, this.size = 40, this.radius = 20});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: Image.asset(
        "assets/temp/user.png",
        height: size,
        width: size,
      ),
    );
  }
}
