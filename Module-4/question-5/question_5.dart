import 'package:flutter/material.dart';

class Question5 extends StatefulWidget {
  const Question5({super.key});

  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool exit = await showExitAlertDialog(context) ?? false;
        return exit;
      },
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          centerTitle: true,
          title: Text('Question-5',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
        ),
        body: Center(
            child: Text('Show Exit Alert Dialog', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
        ),
      ),
    );
  }

  Future<bool> showExitAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert!!',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        content: Text('Are you sure you want to exit',
            style: TextStyle(fontSize: 20)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: Text('Yes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('No',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}