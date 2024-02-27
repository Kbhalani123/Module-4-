import 'package:flutter/material.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({super.key});

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Scaffold(
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(top: 2),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: Text('${index + 1}'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email ${index + 1}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text('Main title of mail is shown here...',
                          style:
                              TextStyle(fontSize: 15, color: Colors.black87)),
                      Text('Details of E-mail send by user...',
                          style: TextStyle(color: Colors.black54)),
                    ],
                  ),

                  Column(
                    children: [
                      Text('12:${50 - index} pm'),
                      SizedBox(
                        height: 25,
                      ),
                      Icon(Icons.star_border)
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
