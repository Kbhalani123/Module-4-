import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
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

