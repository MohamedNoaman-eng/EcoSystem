import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class BuildToast{
  static showToast( {required String text,required ToastState state,@required context, length= Toast.LENGTH_SHORT}){
    return Fluttertoast.showToast(
        msg: text,
        toastLength: length,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: switchColor(state),
        textColor: Colors.black,
        fontSize: 16.0
    );
  }
  static Color switchColor(ToastState state){
    Color color;
    switch(state){
      case ToastState.Success:
        color = Colors.green;
        break;
      case ToastState.Error:
        color = Colors.red;
        break;
      case ToastState.Warning:
        color = Colors.yellow;
        break;
    }
    return color;

  }
  void navigateNotReturn(Widget screen,context){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>screen), (route) => false);
  }
}
enum ToastState{Success, Error, Warning}