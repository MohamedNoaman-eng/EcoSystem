import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/core/utilies/app_strings.dart';

ThemeData appTheme(){
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.accentColor,
    brightness: Brightness.light,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.bold
      )
    ),
    scaffoldBackgroundColor: Colors.white,
    textTheme:  const TextTheme(

      headline1: TextStyle(
        fontSize: 25,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
      ),
      headline2: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontStyle: FontStyle.italic
      ),

    )

  );
}