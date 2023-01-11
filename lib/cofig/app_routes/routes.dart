import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_strings.dart';
import 'package:reviewapp/features/screens/on_board_screen.dart';
import 'package:reviewapp/features/screens/splash_screen.dart';

import '../../features/screens/acount_settings.dart';
import '../../features/screens/add_card.dart';
import '../../features/screens/favoritePage.dart';
import '../../features/screens/fruit_item_details.dart';
import '../../features/screens/help.dart';
import '../../features/screens/home.dart';
import '../../features/screens/login.dart';
import '../../features/screens/myorder_page.dart';
import '../../features/screens/notifications.dart';
import '../../features/screens/profile.dart';
import '../../features/screens/register.dart';
import '../../features/screens/shop_home.dart';
import '../../features/screens/shopping_cart.dart';
import '../../features/screens/success.dart';

class RouteGenerator{
  static const String initialRoute = '/';
  static const String splashScreen = '/splashScreen';
  static const String accountSettingScreen = '/accountSettingScreen';
  static const String addCardScreen = '/addCardScreen';
  static const String favoriteScreen = '/favoriteScreen';
  static const String fruitItemDetailsScreen = '/fruitItemDetailsScreen';
  static const String helpScreen = '/helpScreen';
  static const String homeScreen = '/homeScreen';
  static const String loadingScreen = '/loadingScreen';
  static const String loginScreen = '/loginScreen';
  static const String myOrderScreen = '/myOrderScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String onBoardScreen = '/onBoardScreen';
  static const String profileScreen = '/profileScreen';
  static const String registerScreen = '/registerScreen';
  static const String shopHomeScreen = '/shopHomeScreen';
  static const String shoppingCartScreen = '/shoppingCartScreen';
  static const String successScreen = '/successScreen';
}
class AppRoutes{
  static Route? onGenerateRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case RouteGenerator.initialRoute:
        return MaterialPageRoute(builder: (context)=>SplashScreen());
      case RouteGenerator.accountSettingScreen:
        return MaterialPageRoute(builder: (context)=>const AccountSettingsPage());
      case RouteGenerator.addCardScreen:
        return MaterialPageRoute(builder: (context)=>AddCardPage());
      case RouteGenerator.favoriteScreen:
        return MaterialPageRoute(builder: (context)=>const FavoritePage());
      case RouteGenerator.fruitItemDetailsScreen:
        return MaterialPageRoute(builder: (context)=>const ItemDetails());
      case RouteGenerator.helpScreen:
        return MaterialPageRoute(builder: (context)=>const Help());
      case RouteGenerator.homeScreen:
        return MaterialPageRoute(builder: (context)=>HomeScreen());
      case RouteGenerator.loadingScreen:
        return MaterialPageRoute(builder: (context)=>Login());
      case RouteGenerator.myOrderScreen:
        return MaterialPageRoute(builder: (context)=>const MyOrderPage());
      case RouteGenerator.notificationScreen:
        return MaterialPageRoute(builder: (context)=>const NotificationsPage());
      case RouteGenerator.onBoardScreen:
        return MaterialPageRoute(builder: (context)=>OnBoardScreen());
      case RouteGenerator.profileScreen:
        return MaterialPageRoute(builder: (context)=>const ProfilePage());
      case RouteGenerator.registerScreen:
        return MaterialPageRoute(builder: (context)=>Register());
      case RouteGenerator.shopHomeScreen:
        return MaterialPageRoute(builder: (context)=> ShopHome());
      case RouteGenerator.shoppingCartScreen:
        return MaterialPageRoute(builder: (context)=>const ShoppingCartPage());
      case RouteGenerator.successScreen:
        return MaterialPageRoute(builder: (context)=>const SuccessPage());
      case RouteGenerator.loginScreen:
        return MaterialPageRoute(builder: (context)=> Login());
      default:
        return undefinedRoute();
    }
  }
  static Route<dynamic> undefinedRoute(){
    return MaterialPageRoute(builder: (context)=>const Scaffold(
      body:   Center(
        child: Text(AppStrings.undefinedRoute),
      ),
    ));
  }
}
Route createRoute({page}) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.decelerate;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}