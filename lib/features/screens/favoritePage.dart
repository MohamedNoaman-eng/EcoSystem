import 'dart:developer';

import 'package:customizable_counter/customizable_counter.dart';
import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/core/utilies/text_style.dart';
import 'package:reviewapp/features/widgets/appBar.dart';
import 'package:reviewapp/features/widgets/custom_button.dart';

import '../widgets/counter.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainBar(title: "Favorites", context: context),
      body: LayoutBuilder(
        builder: (context, ct) => ListView.builder(

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
                      width: ct.maxWidth * 0.28,
                      height: ct.maxHeight * 0.2,
                    ),
                    SizedBox(
                      width: ct.maxWidth * 0.4,
                      height: ct.maxHeight * 0.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Graps",
                            style: Styles.titleStyle,
                          ),
                          Text(
                            "Pick up from organic farms",
                            style: Styles.subTitleStyle
                                .copyWith(color: Colors.grey),
                          ),
                          Row(
                            children:const [
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          CounterWidget()
                        ],
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: ct.maxHeight * 0.2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("160 Per/kg"),
                            buildButton(
                                context: context,
                                title: "Add",
                                textcolor: Colors.black,
                                color2: AppColors.primaryColor,
                                function: () {})
                          ],
                        ),
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
      ),
    );
  }
}
