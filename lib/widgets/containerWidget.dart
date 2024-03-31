import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final AssetImage image;
  final String text;
  final String tag;

  const ContainerWidget(
      {super.key, required this.image, required this.text, required this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.5,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Hero(
              tag: tag,
              child: Image(
                image: image,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              text,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}