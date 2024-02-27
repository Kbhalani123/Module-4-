import 'package:flutter/material.dart';
import 'package:k/Module-4/question-5/question_5.dart';

class Question14 extends StatelessWidget {
  const Question14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: Text('Question-14',
            style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue.shade500)),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Question5(),
                    ));
              },
              child: Text('Click to Redirect',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
