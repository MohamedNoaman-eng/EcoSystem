import 'package:flutter/material.dart';
import 'package:reviewapp/core/utilies/text_style.dart';
import 'package:reviewapp/features/widgets/appBar.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainBar(title: "Help", context: context),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Lorem Ipsum is simply dummy text of the printing"
          "and typesetting industry.Lorem Ipsum has been"
    "the industry’s standard dummy text ever since the"
    "1500s, when an unknown printer took a galley of"
    "type and scrambled it to make a type specimen"
    "book. It has survived not only five centuries, but"
    "also the leap into electronic typesetting, remaining"
    "essentially unchanged. It was popularised in the"
    "1960s with the release of Letraset sheets containing"
    "Lorem Ipsum passages, and more recently with"
    "desktop publishing software like Aldus PageMaker"
    "including versions of Lorem Ipsum.",style: Styles.titleStyle),
        ),
      ),
    );
  }
}
