import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final int output;

  OutputScreen({required this.output});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: Text('Output',style: TextStyle(color: Colors.black,fontSize: 40)),
      ),
      body: Center(
        child: Text(
          'Sum = $output',
          style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}