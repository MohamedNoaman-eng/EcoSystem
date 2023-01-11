import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reviewapp/cofig/app_routes/routes.dart';
import 'package:reviewapp/core/utilies/app_strings.dart';
import 'package:reviewapp/core/utilies/text_style.dart';
import 'package:reviewapp/features/widgets/fruit_item.dart';
import 'package:reviewapp/state/provider/store_provider.dart';

import '../../core/utilies/app_colors.dart';

class ShopHome extends StatefulWidget {
  ShopHome({Key? key}) : super(key: key);

  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  List screens = [
    RouteGenerator.shopHomeScreen,
    RouteGenerator.shoppingCartScreen,
    RouteGenerator.favoriteScreen,
    RouteGenerator.accountSettingScreen,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(alignment: Alignment(0, 1.4), children: [
                Container(
                  width: double.infinity,
                  height: constraint.maxHeight * 0.2,
                  color: AppColors.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        AppStrings.appTitle,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: AppColors.accentColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(""),
                      Text(""),
                      Text(""),
                      Icon(
                        Icons.notifications,
                        color: AppColors.accentColor,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  // color: Colors.black.withOpacity(0.1),
                )
              ]),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Vegetables",
                      style: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.blue)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            "Fruits",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    Text("Dry Fruits",
                        style: TextStyle(fontSize: 15.0, color: Colors.grey)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Organic Vegetables",
                            style: Styles.titleStyle,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "(20% Off)",
                            style: Styles.subTitleStyle
                                .copyWith(color: Colors.green),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Provider.of<StoreProvider>(context).isLoading
                      ? Center(child: const CircularProgressIndicator())
                      : GridView.builder(
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.all(10.0),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 100 / 150.77,
                                  crossAxisSpacing: 30,
                                  mainAxisSpacing: 10.0),
                          itemCount: Provider.of<StoreProvider>(context)
                              .products
                              .length,
                          itemBuilder: (BuildContext context, int index) {
                            return const BuildFruitItem();
                          }))
            ],
          );
        },
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.grey.withOpacity(0.3)),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: 1,
          selectedItemColor: AppColors.primaryColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedIconTheme: IconThemeData(color: Colors.grey, size: 30),
          unselectedItemColor: Colors.black,
          //unselectedLabelStyle: TextStyle(color: Colors.grey),
          selectedIconTheme:
              IconThemeData(size: 35, color: AppColors.primaryColor),
          backgroundColor: AppColors.primaryColor,
          onTap: (index) {
            Navigator.of(context).pushNamed(screens[index]);
          },

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border), label: "Favorite"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "My Account"),
          ],
        ),
      ),
    );
  }
}
