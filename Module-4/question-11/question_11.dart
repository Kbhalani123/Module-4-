import 'package:flutter/material.dart';
import 'screens/gallery_screen.dart';
import 'screens/video_screen.dart';
import 'screens/audio_screen.dart';

class Question11 extends StatefulWidget {
  const Question11({super.key});

  @override
  State<Question11> createState() => _Question11State();
}

class _Question11State extends State<Question11> {
  int selectedIndex = 0;

  List<Widget> widgetList = [
    Center(
      child: GalleryScreen(),
    ),
    Center(
      child: AudioScreen(),
    ),
    Center(
      child: VideoScreen(),
    ),
  ];

  List<String> titleList = [
    'Gallery',
    'Audio',
    'Video'
  ];

  @override
  itemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      Navigator.pop(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(titleList[selectedIndex],style: TextStyle(color: Colors.black,fontSize: 25)),
      ),
      body: widgetList[selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/person1.jpg'),
                      backgroundColor: Colors.indigo,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Keyur Bhalani',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'keyurbhalani01@gmail.com',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                itemClicked(0, context);
              },
              title: Text('Gallery'),
              leading: Icon(Icons.image),
            ),
            ListTile(
              onTap: () {
                itemClicked(1, context);
              },
              title: Text('Audio'),
              leading: Icon(Icons.lyrics_sharp),
            ),
            ListTile(
              onTap: () {
                itemClicked(2, context);
              },
              title: Text('Video'),
              leading: Icon(Icons.video_collection_rounded),
            )
          ],
        ),
      ),
    );
  }
}
