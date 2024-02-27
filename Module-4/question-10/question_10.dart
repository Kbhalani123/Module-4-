import 'package:flutter/material.dart';

class Question10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationApp(),
    );
  }
}

class BottomNavigationApp extends StatefulWidget {
  @override
  _BottomNavigationAppState createState() => _BottomNavigationAppState();
}

class _BottomNavigationAppState extends State<BottomNavigationApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    GalleryScreen(),
    AudioScreen(),
    VideoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       //backgroundColor: Colors.black54,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text('Media App',style: TextStyle(color: Colors.white,fontSize: 35)),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 40),
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.image_outlined),
            label: 'Gallery',
            activeIcon: Icon(Icons.image),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_music_outlined),
              label: 'Audio',
              activeIcon: Icon(Icons.queue_music)),
          BottomNavigationBarItem(
              icon: Icon(Icons.videocam),
              label: 'Video',
              activeIcon: Icon(Icons.videocam)),
        ],
      ),
    );
  }
}

class GalleryScreen extends StatelessWidget {

  List<String> imagesList = [
    'assets/images/person1.jpg',
    'assets/images/animal.jpg',
    'assets/images/flowers.jpg',
    'assets/images/tree.jpg',
    'assets/images/animal2.jpg',
    'assets/images/cat.jpg',
    'assets/images/animal3.jpg',
    'assets/images/pb.jpg',
    'assets/images/flowers1.jpg',
    'assets/images/flowers3.jpg',
    'assets/images/home3(images).jpeg',
    'assets/images/neo.jpg',
    'assets/images/rose.jpg',
    'assets/images/sun.jpg',
    'assets/images/tree2.jpg',
    'assets/images/water.jpg',
    'assets/images/water1.jpg',
    'assets/images/ram.jpg',
    'assets/images/Vadtal.jpeg',
    'assets/images/tree1.jpg',
    'assets/images/home1(images).jpeg',
    'assets/images/home2(images).jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
            itemCount: 22,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 130,
             crossAxisSpacing: 3,
             mainAxisSpacing: 3,
              crossAxisCount: 3,
            ),
            itemBuilder:
            (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imagesList[index]),
                  fit: BoxFit.cover),

                ),
              );
            },
        ),
      ),
    );
  }
}

class AudioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Center(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.only(top: 5),
                child: ListTile(
                  trailing: Icon(Icons.star_border),
                  title: Text('Song ${index+1}'),
                  leading: Icon(Icons.lyrics_sharp),),
              );
            },)
      ),
    );
  }
}

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Not Available Video'),
    );
  }
}
