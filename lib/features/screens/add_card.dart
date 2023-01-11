import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/core/utilies/text_style.dart';
import 'package:reviewapp/features/widgets/appBar.dart';
import 'package:reviewapp/features/widgets/custom_button.dart';

import '../widgets/textformfield.dart';

class AddCardPage extends StatelessWidget {
  AddCardPage({Key? key}) : super(key: key);
  var controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: MainBar(title: "Add Card", context: context),
      body: ListView(
        physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        shrinkWrap: true,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*.85,
            child: LayoutBuilder(
            builder: (context, ct) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: ct.maxHeight * 0.2,
                    child: Center(
                      child: Image(
                        image: AssetImage("assets/images/card.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: ct.maxHeight * 0.64,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            "Cardholder Name",
                            style: Styles.titleStyle,
                          ),
                        ),
                        BuildTextFormField(
                          hintheight: 2,
                          width: double.infinity,
                          height: ct.maxHeight * 0.1,
                          title: "CardHolder Name",
                          controller: controller,
                          icon: Icons.person,
                          subtitle: "enter name",
                          isSecure: false,
                          type: TextInputType.text,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "Card Number",
                                style: Styles.titleStyle,
                              ),
                            ),
                            Row(
                              children: [
                                BuildTextFormField(
                                  width: ct.maxWidth * 0.2,
                                  height: ct.maxHeight * .1,
                                  hintheight: 1.5,
                                  title: "CardHolder Name",
                                  controller: controller,
                                  icon: Icons.person,
                                  subtitle: "number",
                                  isSecure: false,
                                  type: TextInputType.text,
                                ),
                                BuildTextFormField(
                                  width: ct.maxWidth * 0.2,
                                  height: ct.maxHeight * .1,
                                  hintheight: 1.5,
                                  title: "CardHolder Name",
                                  controller: controller,
                                  icon: Icons.person,
                                  subtitle: "number",
                                  isSecure: false,
                                  type: TextInputType.text,
                                ),
                                BuildTextFormField(
                                  width: ct.maxWidth * 0.2,
                                  height: ct.maxHeight * .1,
                                  hintheight: 1.5,
                                  title: "CardHolder Name",
                                  controller: controller,
                                  icon: Icons.person,
                                  subtitle: "number",
                                  isSecure: false,
                                  type: TextInputType.text,
                                ),
                                BuildTextFormField(
                                  width: ct.maxWidth * 0.2,
                                  height: ct.maxHeight * .1,
                                  hintheight: 1.5,
                                  title: "CardHolder Name",
                                  controller: controller,
                                  icon: Icons.person,
                                  subtitle: "number",
                                  isSecure: false,
                                  type: TextInputType.text,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "Valid Thru",
                                style: Styles.titleStyle,
                              ),
                            ),
                            Row(
                              children: [
                                BuildTextFormField(
                                  width: ct.maxWidth * 0.7,
                                  height: 70,
                                  hintheight: 1.5,
                                  title: "CardHolder Name",
                                  controller: controller,
                                  icon: Icons.person,
                                  subtitle: "month",
                                  isSecure: false,
                                  type: TextInputType.text,
                                ),
                                BuildTextFormField(
                                  width: ct.maxWidth * 0.2,
                                  height: 70,
                                  hintheight: 1.5,
                                  title: "CardHolder Name",
                                  controller: controller,
                                  icon: Icons.person,
                                  subtitle: "year",
                                  isSecure: false,
                                  type: TextInputType.text,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                "CVV/CVC",
                                style: Styles.titleStyle,
                              ),
                            ),
                            Row(
                              children: [
                                BuildTextFormField(
                                  width: ct.maxWidth * 0.4,
                                  height: ct.maxHeight * .1,
                                  hintheight: 1.5,
                                  title: "CardHolder Name",
                                  controller: controller,
                                  icon: Icons.person,
                                  subtitle: "month",
                                  isSecure: false,
                                  type: TextInputType.text,
                                ),
                                Text(
                                  "3 or 4 digits",
                                  style: Styles.subTitleStyle,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: ct.maxHeight * .15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                          activeColor: AppColors.primaryColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildButton(
                                context: context,
                                title: "ADD CARD NUMBER",
                                textcolor: AppColors.accentColor,
                                color2: AppColors.primaryColor,
                                function: () {}),
                          ],
                        )
                      ],
                    ),
                  ),

                ],

            ),
        ),
          ),]
      ),
    );
  }
}
