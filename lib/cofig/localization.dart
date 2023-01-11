import 'dart:async';


import 'package:flutter/material.dart';

class AppLocalization{
  late final Locale locale;
  AppLocalization(this.locale);
  static AppLocalization? of(BuildContext context){
      return Localizations.of<AppLocalization>(context, AppLocalization);
  }
}