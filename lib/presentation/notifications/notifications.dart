import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);
  final List list = [
    {
      'img': '',
      'name': 'Branson hawkins',
      'actions': 'Start following you',
      'date': '5:30 am'
    },
    {
      'img': '',
      'name': 'Foodybite',
      'actions': 'We found 10 new restaurant near you',
      'date': '6:30 am'
    },
    {
      'img': '',
      'name': 'Juliet Hooper',
      'actions': 'Checked in at Happy Bones',
      'date': 'Yesterday'
    },
    {
      'img': '',
      'name': 'Branson hawkins',
      'actions': 'Start following you',
      'date': 'Yesterday'
    },
    {
      'img': '',
      'name': 'Anabel Leach',
      'actions': 'Checked in at Uncle Boons',
      'date': '6:30 am'
    },
    {
      'img': '',
      'name': 'Ashlee Rollins',
      'actions': 'Start following you',
      'date': 'Yesterday'
    },
    {
      'img': '',
      'name': 'Branson hawkins',
      'actions': 'Start following you',
      'date': '5:30 am'
    },
    {
      'img': '',
      'name': 'Foodybite',
      'actions': 'We found 10 new restaurant near you',
      'date': '6:30 am'
    },
    {
      'img': '',
      'name': 'Juliet Hooper',
      'actions': 'Checked in at Happy Bones',
      'date': 'Yesterday'
    },
    {
      'img': '',
      'name': 'Branson hawkins',
      'actions': 'Start following you',
      'date': 'Yesterday'
    },
    {
      'img': '',
      'name': 'Anabel Leach',
      'actions': 'Checked in at Uncle Boons',
      'date': '6:30 am'
    },
    {
      'img': '',
      'name': 'Ashlee Rollins',
      'actions': 'Start following you',
      'date': 'Yesterday'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Notifications',
          style: TextStyle(
              color: Colors.black, fontFamily: 'JosefinSans', fontSize: 25),
        ),
      ),
      body: Container(
        child: ListView.separated(
          itemCount: list.length,
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                radius: 30,
              ),
              title: Text(
                list[index]['name'],
                style: const TextStyle(
                    color: Colors.black,
                    fontFamily: 'JosefinSans',
                    fontSize: 20),
              ),
              subtitle: Text(
                list[index]['actions'],
                style: const TextStyle(
                    /* color: Colors.black, */ fontFamily: 'JosefinSans',
                    fontSize: 15),
              ),
              trailing: Column(
                children: [
                  Text(
                    list[index]['date'],
                    style: const TextStyle(
                      color: Colors.black38,
                      fontFamily: 'JosefinSans',
                      fontSize: 15,
                    ),
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
