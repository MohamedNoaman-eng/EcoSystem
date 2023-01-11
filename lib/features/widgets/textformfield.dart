import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/text_style.dart';


class BuildTextFormField extends StatelessWidget {
  final TextInputType type;
  final String title;
  final double height;
  final double hintheight;
  final double width;
  final String subtitle;
  final bool isSecure;
  final IconData icon;
  final TextEditingController controller;

  const BuildTextFormField(
      {Key? key, required this.type ,
        required this.title,
        required this.isSecure,

        required this.icon,
        required this.controller, required this.subtitle, required this.height, required this.width, required this.hintheight,
      }
      ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        child: TextFormField(
          textAlign: TextAlign.left,
          controller: controller,
          maxLines: 20,
          maxLength: 255,
          autocorrect: true,
          obscureText: isSecure,
          keyboardType: type,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            hintStyle: TextStyle(color: Colors.grey,height: hintheight),
            hintText: subtitle,
           // label: Text(title,style: Styles.titleStyle,),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey
              )
          )

          ),
        ),
      ),
    );
  }
}

