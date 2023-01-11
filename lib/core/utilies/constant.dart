import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';

class Constants {
  static void errorDialog(
      {required BuildContext context, required String msg}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                msg,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    child: const Text("Ok"))
              ],
            ));
  }

  static void showToast(
      {
      required String msg,
      Color? color,
      ToastGravity? gravity}) {
    Fluttertoast.showToast(
      msg: msg,
      gravity: gravity?? ToastGravity.BOTTOM,
      backgroundColor: color?? AppColors.primaryColor

    );
  }
  static List<Map<String ,dynamic>> onBoardList = [
    {
      'id':0,
      'image':"assets/images/shopping.png",
      'title':"E Shopping",
      'subTitle':"Explore top organic fruits &  grab them"
    },
    {
      'id':1,
      'image':"assets/images/delivery.png",
      'title':"Delivery on the way",
      'subTitle':"Get your order by speed delivery"
    },
    {
      'id':2,
      'image':"assets/images/done.png",
      'title':"Delivery Arrived",
      'subTitle':"Order is at your place"
    }
  ];
}
