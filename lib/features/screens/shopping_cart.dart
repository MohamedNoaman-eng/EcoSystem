import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/features/widgets/appBar.dart';
import 'package:reviewapp/features/widgets/counter.dart';

import '../../core/utilies/text_style.dart';
import '../widgets/custom_button.dart';

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainBar(title: 'Shopping Cart',context: context),
      body: LayoutBuilder(
        builder: (context, ct) => Stack(
          alignment: Alignment.bottomCenter,
          children:[ ListView.builder(

            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        child: const Image(
                          image: AssetImage("assets/images/img.png"),
                          fit: BoxFit.fill,
                        ),
                        width: ct.maxWidth * 0.25,
                        height: ct.maxHeight * 0.2,
                      ),
                      SizedBox(
                        width: ct.maxWidth * 0.45,
                        height: ct.maxHeight * 0.15,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Graps",
                              style: Styles.titleStyle.copyWith(fontFamily: 'Moon'),
                            ),
                            Row(
                             //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rs 190",
                                  style: Styles.subTitleStyle.copyWith(color: Colors.black,decoration: TextDecoration.lineThrough,decorationColor: Colors.black),
                                ),
                                SizedBox(width: 15,),
                                Text(
                                  "Rs 40 Saved",
                                  style: Styles.subTitleStyle
                                      .copyWith(color: Colors.green),
                                ),
                              ],
                            ),
                            Text(
                              "150 Per/kg",
                              style: Styles.subTitleStyle
                                  .copyWith(color: Colors.black),
                            ),


                          ],
                        ),
                      ),
                      SizedBox(
                        width: ct.maxWidth*0.25,
                        height: ct.maxHeight * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                            CounterWidget()
                          ],
                        ),
                      ),
                    ],
                  ),
                  const
                  Divider(color: Colors.black,)
                ],
              ),
            ),
            physics: const BouncingScrollPhysics(),
          ),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total- Rs 570",style: Styles.titleStyle,),
                    buildButton(context: context, title: "Place Order", textcolor: AppColors.accentColor, color2: AppColors.primaryColor, function: (){})
                  ],
                ),
              ),
            )
        ]
        ),
      ),
    );
  }
}
