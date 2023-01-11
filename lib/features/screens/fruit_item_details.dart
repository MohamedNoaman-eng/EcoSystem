import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/features/widgets/appBar.dart';
import 'package:reviewapp/features/widgets/custom_button.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainBar(title: "Details", context: context),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: constraint.maxHeight * 0.3,
                  child: Image(
                    image: AssetImage("assets/images/img.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: constraint.maxHeight * 0.15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Banana",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 10),
                        child: Text(
                            "Grapes will provide natural nutrients. The  Chemical"
                            "in organic grapes which can be healthier hair and"
                            "skin. It can be improve Your heart health. Protect your"
                            "body from Cancer."),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: constraint.maxHeight * 0.35,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nutrition",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  "Fiber",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  "Potassium",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  "Iron",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  "Magnasium",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  "Vetamin c",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  "Vitamin k",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: 7.0,
                                ),
                                Text(
                                  "Zinc",
                                  style: TextStyle(fontSize: 16),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: constraint.maxHeight * 0.1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 10),
                            child: Text("160\$ Per/kg"),
                          ),

                          buildButton(
                            context: context,
                            title: "Add to curt",
                            textcolor: AppColors.accentColor,
                            color2: AppColors.primaryColor,
                            function: (){},
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
