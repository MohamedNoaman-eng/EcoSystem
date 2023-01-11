import 'package:flutter/material.dart';


Widget popupDialog(BuildContext context ,{required String title, required String text, required String message}) {
  return  AlertDialog(
    title: Text(title,
      style:const TextStyle(color: Color(0xff16071E)),),
    backgroundColor: Color(0xffEAEAEA),
    content:  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(text,),
      ],
    ),
    actions: <Widget>[
      // FlatButton(
      //   onPressed: () {
      //     launchWhatsApp(message: message);
      //     Navigator.of(context).pop();
      //   },
      //   textColor: Color(0xff067254),
      //   child: Text(LocalizationConst.translate(context,'Confirm'),),
      // ),
    ],
  );
}