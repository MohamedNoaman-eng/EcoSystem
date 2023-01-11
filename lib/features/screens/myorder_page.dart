import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/text_style.dart';
import 'package:reviewapp/features/widgets/appBar.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainBar(title: "My Orders", context: context),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            //4/0
            width: double.infinity,
            height: 170,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 130,
                    width: 150,
                    child: Image(image: AssetImage("assets/images/img.png")),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Broccoli",
                                style: Styles.titleStyle,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 20,
                                  )),
                            ],
                          ),
                          width: 190,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star,color: Colors.grey,),
                            Icon(Icons.star,color: Colors.grey,),
                            Icon(Icons.star,color: Colors.grey,),
                            Icon(Icons.star,color: Colors.grey,),
                          ],
                        ),
                        Text("rate this product",style: Styles.subTitleStyle.copyWith(color: Colors.grey),),
                        Text("Delivered on 24 Fed 2021",style: Styles.subTitleStyle.copyWith(color: Colors.black)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
