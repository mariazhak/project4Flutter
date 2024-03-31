import 'package:flutter/material.dart';

class detailTab extends StatelessWidget {
  final String tag;
  final AssetImage image;
  final String text;
  final String subtext;

  const detailTab(
      {required this.tag,
        required this.image,
        required this.text,
        required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: tag,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image(image: image),
                  const SizedBox(height: 20),
                  Text(text,
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          decoration: TextDecoration.none)),
                  const SizedBox(height: 20),
                  Text(subtext,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}