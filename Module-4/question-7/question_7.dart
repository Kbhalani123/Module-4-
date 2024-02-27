import 'package:flutter/material.dart';

class Question7 extends StatefulWidget {
  const Question7({super.key});

  @override
  State<Question7> createState() => _Question7State();
}

class _Question7State extends State<Question7> {
  Future<void> ProfileDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.grey.shade700,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Text(
                      'K',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                    backgroundColor: Colors.blue.shade300,
                  ),
                  Positioned(
                    left: 70,
                    top: 60,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.green,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: 23,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white, size: 30),
                title: Text(
                  'Name',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Keyur',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Colors.greenAccent),
                ),
              ),
              Divider(
                color: Colors.white,
                indent: 30,
                endIndent: 20,
              ),
              ListTile(
                leading:
                    Icon(Icons.info_outline, color: Colors.white, size: 30),
                title: Text('About',
                    style: TextStyle(
                        color: Colors.white,)),
                subtitle: Text(
                  'typing...',
                  style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Colors.greenAccent,),
                ),
              ),
              Divider(
                color: Colors.white,
                indent: 30,
                endIndent: 20,
              ),
              ListTile(
                leading: Icon(Icons.call, color: Colors.white, size: 30),
                title: Text('Phone',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text(
                  '+91 8758787422',
                  style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert!!',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        content: Text('Are you sure you want to Logout',style: TextStyle(fontSize: 20)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('No',style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
              Navigator.pop(context, false);
            },
            child: Text('Yes',style: TextStyle(fontSize: 20)),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        centerTitle: true,
        title: Text('Question-7',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                onTap: () {
                  ProfileDialog(context);
                },
                child: Text('Profile'),
              ),
              PopupMenuItem<String>(
                onTap: () {
                  showAlertDialog(context);
                },
                child: Text('Logout'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome Back',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
//
// class Question7 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProfileScreen(),
//     );
//   }
// }
//
// class ProfileScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile Screen'),
//         actions: <Widget>[
//           PopupMenuButton<String>(
//             onSelected: (value) {
//               if (value == 'profile') {
//                 print('Navigate to profile screen');
//               } else if (value == 'logout') {
//                 print('Perform logout action');
//               }
//             },
//             itemBuilder: (BuildContext context) {
//               return [
//                 PopupMenuItem<String>(
//                   value: 'profile',
//                   child: Text('Profile'),
//                 ),
//                 PopupMenuItem<String>(
//                   value: 'logout',
//                   child: Text('Logout'),
//                 ),
//               ];
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text(
//           'Welcome to your profile!',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
