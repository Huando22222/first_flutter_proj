import 'package:flutter/material.dart';
import 'package:flutter_application_test/styles/AppColors.dart';
import 'package:flutter_application_test/styles/AppText.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions; //null able
  const ToolBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.background,
      title: Text(
        title,
        style: AppText.header1,
      ),
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
