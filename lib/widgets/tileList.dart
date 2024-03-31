import 'package:flutter/material.dart';
import 'heroBuilder.dart';
import 'detailTab2.dart';
import 'package:flutter/cupertino.dart';

class TileList extends StatelessWidget{
  IconData icon;
  double? sizeBox;
  String text;
  String subtext;
  AssetImage image;

  TileList ({super.key,required this.icon, this.sizeBox = 15, required this.text, required this.subtext, required this.image});

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        SizedBox(height: sizeBox),
        ListTile(
            splashColor: Colors.deepPurple,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            tileColor: Colors.deepPurple[100],
            title: Text(text),
            leading: Icon(icon, color: Colors.deepPurple),
            trailing: const Icon(CupertinoIcons.arrow_right),
            onTap: (){
              Navigator.of(context).push(HeroPageRoute<void>(builder: (BuildContext context) {
                return detailTab2(
                    image: image,
                    text: text,
                    subtext: subtext);
              }));
            }
        ),
      ],
    );
  }
}