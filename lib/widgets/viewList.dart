import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'tileList.dart';
import 'info.dart';

class ViewList extends StatelessWidget{
  double? sizeBox = 15;
  ViewList({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          Text(
            'Welcome to destination app!',
            style: TextStyle(fontSize: 24, color: Colors.deepPurple[500], fontWeight: FontWeight.bold ),
          ),
          SizedBox(height: sizeBox),
          const Text('Cities',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TileList(icon: CupertinoIcons.building_2_fill,
              text: textsCities[0],
              subtext: subtextsCities[0],
              image: imagesCities[0]),
          TileList(icon: CupertinoIcons.building_2_fill,
              text: textsCities[1],
              subtext: subtextsCities[1],
              image: imagesCities[1]),
          TileList(icon: CupertinoIcons.building_2_fill,
              text: textsCities[2],
              subtext: subtextsCities[2],
              image: imagesCities[2]),
          TileList(icon: CupertinoIcons.building_2_fill,
              text: textsCities[3],
              subtext: subtextsCities[3],
              image: imagesCities[3]),
          TileList(icon: CupertinoIcons.building_2_fill,
              text: textsCities[4],
              subtext: subtextsCities[4],
              image: imagesCities[4]),

          SizedBox(height: sizeBox),
          const Text('Mountains',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TileList(icon: CupertinoIcons.snow,
              text: textsMountains[0],
              subtext: subtextsMountains[0],
              image: imagesMountains[0]),
          TileList(icon: CupertinoIcons.snow,
              text: textsMountains[1],
              subtext: subtextsMountains[1],
              image: imagesMountains[1]),
          TileList(icon: CupertinoIcons.snow,
              text: textsMountains[2],
              subtext: subtextsMountains[2],
              image: imagesMountains[2]),
          TileList(icon: CupertinoIcons.snow,
              text: textsMountains[3],
              subtext: subtextsMountains[3],
              image: imagesMountains[3]),

          SizedBox(height: sizeBox),
          const Text('Coasts',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TileList(icon: CupertinoIcons.drop_fill,
              text: textsCoasts[0],
              subtext: subtextsCoasts[0],
              image: imagesCoasts[0]),
          TileList(icon: CupertinoIcons.drop_fill,
              text: textsCoasts[1],
              subtext: subtextsCoasts[1],
              image: imagesCoasts[1]),
          TileList(icon: CupertinoIcons.drop_fill,
              text: textsCoasts[2],
              subtext: subtextsCoasts[2],
              image: imagesCoasts[2]),
          TileList(icon: CupertinoIcons.drop_fill,
              text: textsCoasts[3],
              subtext: subtextsCoasts[3],
              image: imagesCoasts[3]),
          TileList(icon: CupertinoIcons.drop_fill,
              text: textsCoasts[4],
              subtext: subtextsCoasts[4],
              image: imagesCoasts[4]),
        ],
      ),
    );
  }
}