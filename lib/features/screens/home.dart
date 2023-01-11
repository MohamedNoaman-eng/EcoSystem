import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/features/screens/register.dart';
import 'package:reviewapp/features/widgets/custom_button.dart';
import 'package:reviewapp/features/widgets/outline_button.dart';

import '../../cofig/app_routes/routes.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraint) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: constraint.maxHeight * .1,
            ),
            SizedBox(
              width: constraint.maxWidth,
              height: constraint.maxHeight * .4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(image: AssetImage("assets/images/home.png")),
                  Text(
                    "Fruit Market",
                    style: TextStyle(
                        fontSize: 50,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: constraint.maxWidth * .87,
              height: constraint.maxHeight * .15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildButton(
                        context: context,
                        title: "Sign In",
                        textcolor: Colors.black,
                        color2: Colors.green,
                        function: () {
                          Navigator.of(context)
                              .pushNamed(RouteGenerator.registerScreen);
                        },
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      buildButton(
                        context: context,
                        title: "Log In",
                        textcolor: Colors.black,
                        color2: Colors.green,
                        function: () {
                          Navigator.of(context).pushNamed(RouteGenerator.loginScreen);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I don't have account."),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(RouteGenerator.registerScreen);

                          }, child: const Text("Create acount")),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: constraint.maxHeight * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
