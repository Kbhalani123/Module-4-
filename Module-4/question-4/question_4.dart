import 'package:flutter/material.dart';

class Question4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CitySelectionScreen(),
    );
  }
}

class CitySelectionScreen extends StatefulWidget {
  @override
  _CitySelectionScreenState createState() => _CitySelectionScreenState();
}

class _CitySelectionScreenState extends State<CitySelectionScreen> {
  String selectedCity = 'Null';

  List<String> cities = ['Mumbai','New York', 'London','Tokyo'];

  void _showCitySelectionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a City',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          content: SingleChildScrollView(
            child: Column(
              children: cities
                  .map((city) => ListTile(
                        title: Text(city),
                        onTap: () {
                          setState(() {
                            selectedCity = city;
                          });
                          Navigator.pop(context);
                        },
                      ))
                  .toList(),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade300,
        title: Text('Question-4',
            style: TextStyle(fontSize: 40, color: Colors.black,fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue.shade300)),
              onPressed: _showCitySelectionDialog,
              child: Text('Select City',
                  style: TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            Text('Selected City: $selectedCity',
                style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}
