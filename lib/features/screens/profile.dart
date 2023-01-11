import 'package:flutter/material.dart';
import 'package:reviewapp/cofig/constant.dart';
import 'package:reviewapp/features/widgets/profile_item.dart';

import '../../core/utilies/app_colors.dart';
import '../../core/utilies/text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Column(
            children: [
              Container(
                width: double.infinity,
                height: constraint.maxHeight * 0.3,
                color: AppColors.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 60,
                            backgroundImage:
                                AssetImage("assets/images/person.png"),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "mohamed noaman",
                            style:
                                Styles.hederStyle.copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "mnoaman660@gmail.com",
                            style: Styles.subTitleStyle
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Icon(
                        Icons.edit,
                        size: 30,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: constraint.maxHeight*0.7,
                child: SingleChildScrollView(
                  child: Column(
                    children:[
                      SizedBox(height: 10.0,),
                      ...profileList.map((e){
                        return buildProfileItem(
                          icon: Icon(e['icon'],size: 30,color: AppColors.primaryColor,),
                          itemName: "${e['name']}",
                        );
                      })
                    ]
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
