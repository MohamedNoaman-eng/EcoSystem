import 'package:flutter/material.dart';
import 'package:reviewapp/cofig/app_routes/routes.dart';
import 'package:reviewapp/cofig/theme.dart';
import 'package:reviewapp/core/utilies/app_strings.dart';
import 'package:reviewapp/features/screens/add_card.dart';
import 'package:reviewapp/features/screens/favoritePage.dart';
import 'package:reviewapp/features/screens/home.dart';
import 'package:reviewapp/features/screens/loading.dart';
import 'package:reviewapp/features/screens/login.dart';
import 'package:reviewapp/features/screens/on_board_screen.dart';
import 'package:reviewapp/features/screens/profile.dart';
import 'package:reviewapp/features/screens/shop_home.dart';
import 'package:reviewapp/features/screens/shopping_cart.dart';
import 'package:reviewapp/features/screens/splash_screen.dart';
import 'package:reviewapp/features/screens/success.dart';

import 'features/screens/help.dart';
import 'features/screens/myorder_page.dart';
import 'features/screens/test.dart';
import 'package:flutter_localization/flutter_localization.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: Login(),
      localizationsDelegates: [


      ],
      supportedLocales: const [
        Locale('en','US'),
        Locale('ar','EG'),
      ],
      localeListResolutionCallback: (locale,supportedLocales){
        for(var lang in supportedLocales){

        }
      },
      //initialRoute: RouteGenerator.splashScreen,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
