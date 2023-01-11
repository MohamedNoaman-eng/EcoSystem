import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/lottie/success.zip',
          fit: BoxFit.fill,
          width: 200,
          height: 200,
          delegates:  LottieDelegates(
            values: [
              ValueDelegate.color(
                // keyPath order: ['layer name', 'group name', 'shape name']
                const ['**', 'wave_2 Outlines', '**'],
                value: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
