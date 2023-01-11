import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/text_style.dart';

class BuildOutlinedButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function function;

  const BuildOutlinedButton({Key? key, required this.color, required this.text, required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color)
      ),
      child: OutlinedButton(
        onPressed: (){
          function();
        },
        child: Text(text,style: Styles.buttonStyle,),

      ),
    );
  }
}
