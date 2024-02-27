import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
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
