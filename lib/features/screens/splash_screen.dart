import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:reviewapp/cofig/app_routes/routes.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/features/screens/on_board_screen.dart';
import 'package:workmanager/workmanager.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  AnimationController? _animationController;
  Animation? fadingAnimation;
  void callbackDispatcher(){
    Workmanager().executeTask((taskName, inputData){
      var initializationAndroid = AndroidInitializationSettings("@mipmap/ic_launchr");
      var initializationSetting = InitializationSettings(
        android: initializationAndroid
      );
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
      WidgetsFlutterBinding.ensureInitialized();
      flutterLocalNotificationsPlugin.initialize(initializationSetting);


      return Future.value(true);
    });
  }
@override
  void initState() {
  super.initState();
  Timer(const Duration(seconds: 5), (){
    Navigator.of(context).pushReplacementNamed(RouteGenerator.onBoardScreen);
  });

    _animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 1000));
    fadingAnimation = Tween<double>(begin: 0.2, end: 1).animate(_animationController!)..addListener(() {
      setState(() {
          if(_animationController!.isCompleted){
            _animationController!.repeat(reverse: true);
          }
      });
    });
    _animationController!.forward();
  }
  @override
  void dispose() {
    _animationController!.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: AppColors.splashColor,
        ),
        backgroundColor: AppColors.splashColor,
        body: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Spacer(),
               Opacity(
                 opacity: fadingAnimation!.value,
                 child: Text("Fruit Market",style: TextStyle(
                   fontSize: 50,
                   color: Colors.white,
                   fontWeight: FontWeight.bold
                 ),),
               ),
              //Spacer(),
              Image(image: AssetImage("assets/images/splash.png"),fit: BoxFit.cover,)
            ],
          ),
        ),
      ),
    );
  }
}
