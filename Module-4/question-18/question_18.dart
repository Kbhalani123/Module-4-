import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'model/item.dart';

class Question18 extends StatefulWidget {
  const Question18({super.key});

  @override
  State<Question18> createState() => _Question18State();
}

class _Question18State extends State<Question18> {
  List<Item> itemList = [
    Item(id: '1', itemName: 'Item 1'),
    Item(id: '2', itemName: 'Item 2'),
    Item(id: '3', itemName: 'Item 3')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Text('Question-18',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            Item user = itemList[index];
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text(
                    '${user.itemName!.replaceFirst(user.itemName![0], user.itemName![0].toUpperCase())}'),
                trailing: PopupMenuButton<String>(
                  onSelected: (String choice) async {
                    if (choice == 'Edit') {
                      addUserInListile(context: context, item: user);
                    } else if (choice == 'View') {
                      // Perform view operation
                      _showListileDialog(context, index);
                      print('View item: ${itemList[index]}');
                    } else if (choice == 'Delete') {
                      showAlertDialog(context, user);
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return ['Edit', 'View', 'Delete'].map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade500,
        onPressed: () {
          addUserInListile(context: context);
        },
        child: Icon(Icons.add,color: Colors.black,size: 35),
      ),
    );
  }

  void addUserInListile({required BuildContext context, Item? item}) {
    final _nameController =
    TextEditingController(text: item != null ? item.itemName : '');

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom == 0
                  ? 20
                  : MediaQuery.of(context).viewInsets.bottom + 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Item Name',
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                child: FilledButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue.shade300)),
                  onPressed: () {
                    String _name = _nameController.text.trim();

                    var mUser = Item(
                      itemName: _name,
                      id: item != null ? item.id : getUniqueId(),
                    );

                    if (item != null) {
                      updateItem(mUser, context);
                    } else {
                      addItem(mUser, context);
                    }
                  },
                  child: Text(
                      item != null ? 'Update Item List' : 'Create Item List',style: TextStyle(color: Colors.black)),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  getUniqueId() {
    var uuid = Uuid();
    return uuid.v4();
  }

  void addItem(Item item, BuildContext context) {
    setState(() {
      itemList.add(item);
      Navigator.pop(context);
    });
  }

  void updateItem(Item mItem, BuildContext context) {
    var index = itemList.indexWhere((element) => element.id == mItem.id);
    if (index != -1) {
      setState(() {
        itemList[index] = mItem;
        Navigator.pop(context);
      });
    }
  }

  void _showListileDialog(BuildContext context, index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: ListTile(title: Text('${itemList[index].itemName}'),
              )
          ),
        );
      },
    );
  }


  Future<bool> showAlertDialog(BuildContext context, Item item) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert!!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
        content: Text('Are you sure you want to Delete',style: TextStyle(fontSize: 20)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('Cancel',style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
              setState(() {
                itemList.removeWhere((element) => element.id == item.id);
              });
            },
            child: Text('Delete',style: TextStyle(fontSize: 20,color: Colors.red)),
          )
        ],
      ),
    );
  }
}

