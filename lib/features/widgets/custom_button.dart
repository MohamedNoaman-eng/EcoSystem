import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';

Widget buildButton({
  required BuildContext context,
  required String title,
  required Color textcolor,
  required Color color2,
  required Function function}){
  return Container(

    child: OutlinedButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.5))
      ),
      child:  Text(title,style: TextStyle(
          color: AppColors.accentColor,fontSize: 18.0
      ),),
      onPressed: () {
        function();
      },
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: AppColors.primaryColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 0,
          offset: Offset(0, 3),
        )
      ]
    ),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    height: 50,
  );
}