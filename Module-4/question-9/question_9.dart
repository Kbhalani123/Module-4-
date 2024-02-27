import 'package:flutter/material.dart';
import 'package:k/Module-4/question-9/screen/all-inbox.dart';
import 'package:k/Module-4/question-9/screen/primary-screen.dart';
import 'package:k/Module-4/question-9/screen/trush-screen.dart';
import 'model/data.dart';


class Question9 extends StatefulWidget {
  const Question9({super.key});

  @override
  State<Question9> createState() => _Question9State();
}

class _Question9State extends State<Question9> {
  List<Label> labelList = [
    Label(
      labelName: 'Starred',
      labelsIcon: Icon(Icons.star_border_outlined),
      badge: '3',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Snoozed',
      labelsIcon: Icon(Icons.watch_later_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
        labelName: 'Important',
        labelsIcon: Icon(Icons.label_important_outline),
        badge: '26',
        badgeColor: Colors.transparent),
    Label(
        labelName: 'Sent',
        labelsIcon: Icon(
          Icons.send_outlined,
        ),
        badge: '',
        badgeColor: Colors.transparent),
    Label(
      labelName: 'Scheduled',
      labelsIcon: Icon(Icons.schedule_send_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Outbox',
      labelsIcon: Icon(Icons.outbox),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Draft',
      labelsIcon: Icon(Icons.insert_drive_file_outlined),
      badge: '1',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'All Mails',
      labelsIcon: Icon(Icons.mail_outline),
      badge: '99+',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Spam',
      labelsIcon: Icon(Icons.report_gmailerrorred),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Trash',
      labelsIcon: Icon(Icons.delete_outline),
      badge: '',
      badgeColor: Colors.transparent,
    ),

  ];

  List<GoogleApp> googleAppList = [
    GoogleApp(
        googleAppName: 'Calender',
        googleAppIcon: Icon(Icons.calendar_today),
        googleAppBadge: '',
        googleAppColor: Colors.transparent),
    GoogleApp(
        googleAppName: 'Contacts',
        googleAppIcon: Icon(Icons.account_circle_outlined),
        googleAppBadge: '',
        googleAppColor: Colors.transparent),
  ];

  List<Widget> widgetList = [
    AllinBox(),
    PrimaryScreen(),
    Center(
      child: Text('Promotion'),
    ),
    Center(
      child: Text('Social'),
    ),
    Center(
      child: Text('Starred'),
    ),
    Center(
      child: Text('Snoozed'),
    ),
    Center(
      child: Text('Importent'),
    ),
    Center(
      child: Text('Sent'),
    ),
    Center(
      child: Text('Scheduled'),
    ),
    Center(
      child: Text('Outbox'),
    ),
    Center(
      child: Text('Draft'),
    ),
    Center(
      child: Text('All Mails'),
    ),
    Center(
      child: Text('Spam'),
    ),
    Center(
      child: Text('Calender'),
    ),
    Center(
      child: Text('Contact'),
    ),
    Center(
      child: Text('Setting'),
    ),
    Center(
      child: Text('Hepl & feedback'),
    ),
  ];

  int selectedIndex = 1, navigationBarIndex = 0;

  List<Data> dataList = [];

  void initState() {
    dataList.add(
        Data(title: '', icon: Icons.mail_outline, selectedIcon: Icons.mail));
    dataList.add(Data(
        title: '',
        icon: Icons.video_chat_outlined,
        selectedIcon: Icons.video_chat));
  }

  itemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      Navigator.pop(context);
    });
  }

  bottomitemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      navigationBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                SizedBox(height: 2),
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.grey,
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search in mail',
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade200, fontSize: 20),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 18,
                            child: Text('KB',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            backgroundColor: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: widgetList[selectedIndex],
                )
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.white10,
        selectedIndex: navigationBarIndex,
        indicatorColor: Colors.indigo.shade300,
        onDestinationSelected: (value) {
          bottomitemClicked(navigationBarIndex, context);
          setState(() {
            navigationBarIndex = value!;
          });
        },
        destinations: List.generate(
          dataList.length,
              (index) => NavigationDestination(
            icon: Icon(dataList[index].icon),
            label: dataList[index].title.split(' ').first,
            selectedIcon: Icon(dataList[index].selectedIcon),
          ),
        ),
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Gmail',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black),
                ),
              ),
              Divider(color: Colors.black),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(1, context);
                  },
                  title: Text('All inboxes',style: TextStyle(color: Colors.black,fontSize: 18)),
                  leading: Icon(
                    Icons.all_inbox,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 0,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.black,),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(1, context);
                  },
                  title: Text('Primary',style: TextStyle(color: Colors.black,fontSize: 18)),
                  leading: Icon(
                    Icons.inbox,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 1,
                  selectedTileColor: Colors.deepPurple,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  trailing: Text('837'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(2, context);
                  },
                  title: Text('Promotion',style: TextStyle(fontSize: 18,color: Colors.black)),
                  leading: Icon(
                    Icons.discount_outlined,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 2,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  trailing: Badge(
                    label: Text(
                      '101 new',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.greenAccent,
                    largeSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(3, context);
                  },
                  title: Text('Social',),
                  leading: Icon(
                    Icons.group_outlined,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 3,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  trailing: Badge(
                    label: Text(
                      '72 new',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.lightBlueAccent,
                    largeSize: 24,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text('All labels'),
                children: List.generate(
                  labelList.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ListTile(
                      onTap: () {
                        itemClicked(index + 4, context);
                      },
                      title: Text('${labelList[index].labelName}'),
                      leading: labelList[index].labelsIcon,
                      selected: selectedIndex == index + 4,
                      selectedTileColor: Colors.blue,
                      selectedColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      trailing: Badge(
                        label: Text(
                          '${labelList[index].badge}',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: labelList[index].badgeColor,
                        largeSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              ExpansionTile(
                title: Text('Google App'),
                children: List.generate(
                  googleAppList.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ListTile(
                      onTap: () {
                        itemClicked(index + labelList.length + 4, context);
                      },
                      title: Text('${googleAppList[index].googleAppName}'),
                      selected: selectedIndex == index + labelList.length + 4,
                      selectedTileColor: Colors.blue,
                      selectedColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      leading: googleAppList[index].googleAppIcon,
                      trailing: Badge(
                        label: Text(
                          '${googleAppList[index].googleAppBadge}',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: googleAppList[index].googleAppColor,
                        largeSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(
                        labelList.length + googleAppList.length + 4, context);
                  },

                  title: Text('Setting'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  selected: selectedIndex ==
                      labelList.length + googleAppList.length + 4,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(labelList.length + googleAppList.length + 4 + 1,
                        context);
                  },
                  title: Text('Help & feedback'),
                  leading: Icon(
                    Icons.question_mark_outlined,
                    color: Colors.black,
                  ),
                  selected: selectedIndex ==
                      labelList.length + googleAppList.length + 4 + 1,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
