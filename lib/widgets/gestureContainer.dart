import 'package:flutter/material.dart';
import 'detailTab.dart';
import 'heroBuilder.dart';
import 'containerWidget.dart';

class GestureContainer extends StatelessWidget {
  final String tag;
  final AssetImage image;
  final String text;
  final String subtext;

  const GestureContainer(
      {super.key,
        required this.tag,
        required this.image,
        required this.text,
        required this.subtext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(HeroPageRoute<void>(builder: (BuildContext context) {
          return detailTab(
              tag: tag, image: image, text: text, subtext: subtext);
        }));
      },
      child: ContainerWidget(
        tag: tag,
        image: image,
        text: text,
      ),
    );
  }
}