import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';


class MainBar extends StatelessWidget with PreferredSizeWidget {
  MainBar({Key? key, required this.title, required this.context}) : super(key: key);
  final String title;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: AppColors.accentColor,
        //color: Color(0xff16071E),
        size: 28,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColors.accentColor),
      ),
      backgroundColor: AppColors.primaryColor,
      centerTitle: true,
      leading: Navigator.canPop(context)
          ? IconButton(
          icon: Icon(Icons.chevron_left_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          }
      )
          : null,
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

