import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class Question3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlertDialogDemo(),
    );
  }
}

class AlertDialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,

      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text('Question-3',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Choose an option'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop('Positive');
                      },
                      child: Text('Positive',style: TextStyle(fontSize: 13)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop('Negative');
                      },
                      child: Text('Negative',style: TextStyle(fontSize: 13)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop('Neutral');
                      },
                      child: Text('Neutral',style: TextStyle(fontSize: 13)),
                    ),
                  ],
                );
              },
            ).then((value) => showToast(value));
          },
          child: Text('Show AlertDialog',style: TextStyle(fontSize: 25,color: Colors.black)),
        ),
      ),
    );
  }

  void showToast(String choice) {
    Fluttertoast.showToast(
        msg: 'You choose $choice',fontSize: 20);
  }
}
