import 'package:flutter/material.dart';

import '../../core/utilies/app_colors.dart';
import '../../core/utilies/text_style.dart';

class buildProfileItem extends StatelessWidget {
  const buildProfileItem({Key? key, required this.icon, required this.itemName}) : super(key: key);
  final Icon icon;
  final String itemName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  icon,
                  SizedBox(width: 15.0,),
                  Text(itemName,style: Styles.titleStyle,),

                ],
              ),
              SizedBox(height: 10.0,),
              Divider(color: Colors.grey,height: 20,)
            ],
          ),

        ),
      ),
    );
  }
}
