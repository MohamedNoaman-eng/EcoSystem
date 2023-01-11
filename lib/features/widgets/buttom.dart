import 'package:flutter/material.dart';

class BuildCustomWidget{
  Widget buildButton(onPressed,
      Widget widget,) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
          start: 10.0, end: 10.0),
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(10.0)),
        child: TextButton(onPressed: onPressed, child: widget),
      ),
    );
  }


}