import 'package:flutter/material.dart';

Widget bottomAppBar(context, {bool homePage = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      IconButton(
        icon: Icon(
          Icons.home,
          size: 32,
          color: homePage ? Color(0xff8f5f43) : Colors.grey,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("/homepage");
        },
      ),
      IconButton(
        icon: Icon(
          Icons.shopping_cart,
          size: 32,
          color: Colors.grey,
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("/cartItems");
        },
      ),
      IconButton(
        icon: Icon(
          Icons.favorite,
          size: 32,
          color: Colors.grey,
        ),
        onPressed: () => {
          Navigator.of(context).pushNamed("/favItems"),
        },
      ),
    ],
  );
}
