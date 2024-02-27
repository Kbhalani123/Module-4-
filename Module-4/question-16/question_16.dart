import 'package:flutter/material.dart';
import 'package:k/Module-4/question-16/screen/output.dart';

class Question16 extends StatefulWidget {
  @override
  _Question16State createState() => _Question16State();
}

class _Question16State extends State<Question16> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text('Question-16',
            style: TextStyle(fontSize: 40, color: Colors.black,fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter number 1',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(height: 10),
              TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    hintText: 'Enter number 2',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.blue.shade300)),
                onPressed: () {
                  int num1 = int.parse(num1Controller.text);
                  int num2 = int.parse(num2Controller.text);
                  int output = num1 + num2;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OutputScreen(output: output),
                    ),
                  );
                },
                child: Text('Calculate Sum',
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
