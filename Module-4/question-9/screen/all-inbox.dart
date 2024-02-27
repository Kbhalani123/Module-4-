import 'package:flutter/material.dart';

class AllinBox extends StatefulWidget {
  const AllinBox({super.key});

  @override
  State<AllinBox> createState() => _AllinBoxState();
}

class _AllinBoxState extends State<AllinBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(children: <Widget>[
          SizedBox(width: 10,),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.indigo.shade300)),
              onPressed: () {
              },
              child: Text('New meeting',style: TextStyle(fontSize: 20,color: Colors.white)),
            ),
          ),
          SizedBox(width: 5,),
          Expanded(
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white10)),
              onPressed: () {},
              child: Text('Join a code',style: TextStyle(fontSize: 20,color: Colors.indigo.shade300)),
            ),
          ),
          SizedBox(width: 5,)
        ]

        ),
        SizedBox(width: 10,),

      ],
    ));
  }
}
