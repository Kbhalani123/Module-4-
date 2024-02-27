import 'package:flutter/material.dart';

class Question2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          centerTitle: true,
          title: Text(
            'Question-2',
            style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                letterSpacing: 2,
                wordSpacing: 2,
                fontWeight: FontWeight.bold),
          ),        ),
        body: Center(
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Alert!!',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold)),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('Do you want to Close this app',style: TextStyle(fontSize: 20)),
                        SizedBox(
                          height: 10,
                        ),
                        Icon(Icons.warning_rounded, color: Colors.red, size: 60),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel',style: TextStyle(fontSize: 20)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Ok',style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Show Alert Dialog',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25)),
          ),
        ),
      ),
    );
  }
}