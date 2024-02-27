import 'package:flutter/material.dart';
import 'package:k/Module-4/model/question.dart';
import 'package:k/Module-4/question-1/question_1.dart';
import 'package:k/Module-4/question-10/question_10.dart';
import 'package:k/Module-4/question-11/question_11.dart';
import 'package:k/Module-4/question-13/question_13.dart';
import 'package:k/Module-4/question-14/question_14.dart';
import 'package:k/Module-4/question-16/question_16.dart';
import 'package:k/Module-4/question-17/question_17.dart';
import 'package:k/Module-4/question-18/question_18.dart';
import 'package:k/Module-4/question-2/question_2.dart';
import 'package:k/Module-4/question-3/question_3.dart';
import 'package:k/Module-4/question-4/question_4.dart';
import 'package:k/Module-4/question-5/question_5.dart';
import 'package:k/Module-4/question-6/question_6.dart';
import 'package:k/Module-4/question-7/question_7.dart';
import 'package:k/Module-4/question-8/question_8.dart';
import 'package:k/Module-4/question-9/question_9.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  List<Question> questionList = [
    Question(questionNo: 1, question: 'Create custom toolbar as per given below design Create toolbar with spinner and search functionality'),
    Question(questionNo: 2, question: 'Write a code to display simple alert dialog with title, description an icon when button is clicked'),
    Question(questionNo: 3, question: 'Write a code to display alert dialog with positive, negative and neutral button and display toast respectively user\'s choice'),
    Question(questionNo: 4, question: 'Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView'),
    Question(questionNo: 5, question: 'open alert dialog when user want to exit from the application'),
    Question(questionNo: 6, question: 'Write a code to select Date on button\'s click event'),
    Question(questionNo: 7, question: 'Write a code to display profile and logout option in options menu'),
    Question(questionNo: 8, question: 'Write a code to display edit, view, delete options with context menu in listview and also perform respective operation on user\'s choice'),
    Question(questionNo: 9, question: 'Create an application like gmail and display Screens according to user selection and design each page with dummy data'),
    Question(questionNo: 10, question: 'Create an application with bottom navigation with 3 tabs Gallery, audio and video and design each page with dummy data'),
    Question(questionNo: 11, question: 'Create an application with Navigation Drawer with 3 tabs Gallery,audio and video and design each page with dummy data'),
    Question(questionNo: 12, question: 'create a Phone call App when user first time open the app it will automatically generate one dialog which has two option allow, deny if click on allow permission is grant in settings'),
    Question(questionNo: 13, question: 'Write a code to display Splash Screen using Activity'),
    Question(questionNo: 14, question: 'Write a code to redirect user from one activity to another when button click.'),
    Question(questionNo: 15, question: 'Create an Android Application which Manage Activity Lifecycle Stages and Showing Toast with Performing Different Stages.'),
    Question(questionNo: 16, question: 'Create an Application to take input two numbers from users and when user press button then display sum of those values of next Activity.'),
    Question(questionNo: 17, question: 'Call via urllauncher, Send Sms via urllauncher'),
    Question(questionNo: 18, question: 'Write a program to add name from the text view and insert into the listview. If you click on the listview then name should be show in the dialog box. When user press for 2 seconds on particular List item then open Context Menu (Delete Item, Edit Item, Exit). If user click on Delete Item then Open one Alert Dialog with message(“Are you sure want to delete Item?”) and yes, no button if user press yes button then remove item from list.(Click a DELETE button, it gives a confirm box) If user click on Edit item then selected item display on EditText and again user click on button then this (updated item) should be replace with old item')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,

      appBar: AppBar(
        backgroundColor: Colors.blue.shade500,
        centerTitle: true,
        title: Text('Module 4',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                letterSpacing: 2,
                color: Colors.black87)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(6),
        child: ListView.builder(
          itemCount: questionList.length,
          itemBuilder: (context, index) {
            Question question = questionList[index];
            return Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.blue[50],
              child: ListTile(
                onTap: () {
                  _itemClicked(question, context);
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Text('${question.questionNo}',
                      style: TextStyle(color: Colors.white)),
                ),
                title: Text(question.question,
                    style: TextStyle(fontWeight: FontWeight.w400)),
                trailing: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void _itemClicked(Question question, BuildContext context) {
  switch (question.questionNo) {
    case 1:
      Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Question1(),
      ),
    );
      break;
    case 2:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question2(),
        ),
      );
      break;
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question3(),
        ),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question4(),
        ),
      );
      break;
    case 5:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question5(),
        ),
      );

      break;
    case 6:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question_6(),
        ),
      );

      break;
    case 7:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question7(),
        ),
      );

      break;
    case 8:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question8(),
        ),
      );
      break;
    case 9:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question9(),
        ),
      );

      break;
    case 10:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question10(),
        ),
      );

      break;
    case 11:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question11(),
        ),
      );
      break;
    case 12:
      break;
    case 13:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question13(),
        ),
      );

      break;
    case 14:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question14(),
        ),
      );

      break;
    case 15:
      break;
    case 16:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question16(),
        ),
      );

      break;
    case 17:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question17(),
        ),
      );

      break;
    case 18:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Question18(),
        ),
      );


      break;
  }
}
