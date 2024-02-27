import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Question17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'SMS Screen', home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> sendSms() async {
    String phoneNumber = '8758787422';
    String message = 'Hello, this is a test message!';

    String url = 'sms:$phoneNumber?body=$message';
    bool result = await canLaunchUrlString(url);

    try {
      if (result) {
        await launchUrlString(url);
      } else {
        throw Exception('Could not launch');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: Text('Question-17',
            style: TextStyle(color: Colors.black, fontSize: 40,fontWeight: FontWeight.bold)),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue.shade500)),
            child: Text('Send SMS',
                style: TextStyle(fontSize: 30, color: Colors.black)),
            onPressed: () {
              sendSms();
            },
          ),
        ],
      )),
    );
  }
}
