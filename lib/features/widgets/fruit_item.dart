import 'package:flutter/material.dart';
import 'package:reviewapp/features/screens/fruit_item_details.dart';

import '../../cofig/app_routes/routes.dart';

class BuildFruitItem extends StatelessWidget {
  const BuildFruitItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(createRoute(page: ItemDetails()));
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(
              width: double.infinity,
              height: 163.3,
              child: Image(image: AssetImage("assets/images/img.png"),
                  fit: BoxFit.fill),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.yellow,),
                        Icon(Icons.star,color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Bananna"),

                        Icon(Icons.favorite,color: Colors.red,),

                      ],
                    ),
                    Text("300\$ Per/kg")
                  ],
                ),
              ),
              color: Colors.cyan.withOpacity(0.2),
            )
          ],
        ),
      ),
    );
  }
}
