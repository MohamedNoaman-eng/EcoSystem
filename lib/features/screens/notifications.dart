import 'package:flutter/material.dart';
import 'package:reviewapp/features/widgets/appBar.dart';

import '../../core/utilies/app_colors.dart';
import '../../core/utilies/text_style.dart';
import '../widgets/custom_button.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainBar(title: "Notifications", context: context),
      body: LayoutBuilder(
        builder: (context, ct) => ListView.builder(
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) => Column(
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
                    width: ct.maxWidth * 0.6,
                    height: ct.maxHeight * 0.12,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Buy 1kg Get 200gm Free",
                          style: Styles.titleStyle,
                        ),
                        Text(
                          "Buy 1 Get 1 Free for small size\n"
                              "Until Feb 27,2021",
                          style: Styles.subTitleStyle
                              .copyWith(color: Colors.grey),
                        ),
                        Text("few minutes ago")
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: ct.maxHeight * 0.12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.menu),

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
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
