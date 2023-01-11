import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/features/widgets/appBar.dart';
import 'package:reviewapp/features/widgets/profile_item.dart';

class AccountSettingsPage extends StatelessWidget {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainBar(title: "Account Settings", context: context),
      body: Column(
        children: [
          buildProfileItem(icon: Icon(Icons.security,color: AppColors.primaryColor,size: 30,), itemName: "Security"),
          buildProfileItem(icon: Icon(Icons.remove_circle,color: AppColors.primaryColor,size: 30,), itemName: "Deactivate Account"),
          buildProfileItem(icon: Icon(Icons.delete,color: AppColors.primaryColor,size: 30,), itemName: "Delete Account"),
        ],
      ),
    );
  }
}
