import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/gestureContainer.dart';
import 'widgets/info.dart';
import 'widgets/viewList.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Places',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Places to visit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener((){
        setState(() {
          currentIndex = controller.index;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      Wrap(children: [
        GestureContainer(
            tag: textsCities[0],
            image: imagesCities[0],
            text: textsCities[0],
            subtext: subtextsCities[0]),
        GestureContainer(
            tag: textsCities[1],
            image: imagesCities[1],
            text: textsCities[1],
            subtext: subtextsCities[1]),
        GestureContainer(
            tag: textsCities[2],
            image: imagesCities[2],
            text: textsCities[2],
            subtext: subtextsCities[2]),
        GestureContainer(
            tag: textsCities[3],
            image: imagesCities[3],
            text: textsCities[3],
            subtext: subtextsCities[3]),
       GestureContainer(
            tag: textsCities[4],
            image: imagesCities[4],
            text: textsCities[4],
            subtext: subtextsCities[4]),

      ]),
      Wrap(children: [
        GestureContainer(
            tag: textsMountains[0],
            image: imagesMountains[0],
            text: textsMountains[0],
            subtext: subtextsMountains[0]),
        GestureContainer(
            tag: textsMountains[1],
            image: imagesMountains[1],
            text: textsMountains[1],
            subtext: subtextsMountains[1]),
        GestureContainer(
            tag: textsMountains[2],
            image: imagesMountains[2],
            text: textsCities[2],
            subtext: subtextsMountains[2]),
        GestureContainer(
            tag: textsMountains[3],
            image: imagesMountains[3],
            text: textsMountains[3],
            subtext: subtextsMountains[3]),
      ]),

      Wrap(children: [
        GestureContainer(
            tag: textsCoasts[0],
            image: imagesCoasts[0],
            text: textsCoasts[0],
            subtext: subtextsCoasts[0]),
        GestureContainer(
            tag: textsCoasts[1],
            image: imagesCoasts[1],
            text: textsCoasts[1],
            subtext: subtextsCoasts[1]),
        GestureContainer(
            tag: textsCoasts[2],
            image: imagesCoasts[2],
            text: textsCoasts[2],
            subtext: subtextsCoasts[2]),
        GestureContainer(
            tag: textsCoasts[3],
            image: imagesCoasts[3],
            text: textsCoasts[3],
            subtext: subtextsCoasts[3]),
        GestureContainer(
            tag: textsCoasts[4],
            image: imagesCoasts[4],
            text: textsCoasts[4],
            subtext: subtextsCoasts[4]),
      ]),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: TabBarView(
        controller: controller,
        children: tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.building_2_fill),
            label: 'Cities',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.snow),
            label: 'Mountains',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.drop_fill),
            label: 'Coasts',
          ),
        ],
        onTap: (index) {
          setState(() {
            controller.index = index;
            controller.animateTo(index, curve: Curves.easeInOut, duration: const Duration(milliseconds: 100));
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showMenu(context: context,
                items: [
              PopupMenuItem(child: RichText(
              text: const TextSpan(
                text: '',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                children: [
                  TextSpan(text: 'Hi! ', style: TextStyle(color: Colors.deepPurple)),
                  TextSpan(text: ' This is an app which will help you to find out more about exciting destinations!',  style: TextStyle(fontWeight: FontWeight.normal) ),
                  TextSpan(text: ' Enjoy!', style: TextStyle(fontStyle: FontStyle.italic, color: Colors.deepPurple)),
                ],
              ),
            ))
            ],
                position: RelativeRect.fromLTRB(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height*0.74,  0, 0 )
            );
          },
          shape: const CircleBorder(),
          elevation: 6,
          child: const Icon(Icons.info),
        ),
        drawer: Drawer(child: ViewList()),
    );
  }
}




