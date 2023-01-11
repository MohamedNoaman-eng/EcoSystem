import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/app_colors.dart';
import 'package:reviewapp/core/utilies/constant.dart';
import 'package:reviewapp/core/utilies/text_style.dart';

import '../../cofig/app_routes/routes.dart';

class OnBoardScreen extends StatelessWidget {
  PageController _pageController = new PageController();

  OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        reverse: false,
        physics: const BouncingScrollPhysics(),
        children: Constants.onBoardList.map((e) {
          return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: LayoutBuilder(
              builder: (context, constraint) {
                return Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: constraint.maxHeight * 0.2,
                        width: constraint.maxWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Text(
                                "Skip",
                                style: Styles.subTitleStyle,
                              ),
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed(RouteGenerator.homeScreen);
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: constraint.maxHeight * 0.4,
                        width: constraint.maxWidth,
                        child: Image(
                          image: AssetImage(e['image']),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: constraint.maxHeight * 0.1,
                        width: constraint.maxWidth,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              e['title'],
                              style: Styles.titleStyle),
                            const Spacer(),
                            Text(
                              e['subTitle'],
                              style: Styles.subTitleStyle),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: constraint.maxHeight * 0.1,
                        width: constraint.maxWidth * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: e['id'] == 0
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  border: Border.all(
                                      color: AppColors.primaryColor)),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: e['id'] == 1
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  border: Border.all(
                                    color: AppColors.primaryColor,
                                  )),
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: e['id'] == 2
                                      ? AppColors.primaryColor
                                      : Colors.white,
                                  border: Border.all(
                                      color: AppColors.primaryColor)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: constraint.maxHeight * 0.2,
                        width: constraint.maxWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: constraint.maxWidth * 0.4,
                              height: constraint.maxHeight * 0.07,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.primaryColor),
                              child: OutlinedButton(
                                onPressed: () {
                                  if(e['id']!=2){
                                    _pageController.jumpToPage(e['id']+1);
                                  }else if(e['id']==2){
                                    Navigator.of(context).pushReplacementNamed(RouteGenerator.homeScreen);
                                  }
                                },
                                child: const Text(
                                  "Next",
                                  style: TextStyle(
                                      //fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      fontFamily: "Poppins",
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
