import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qmenu/presentation/favorites/favorites_screen.dart';
import 'package:qmenu/presentation/home/home_screen.dart';
import 'package:qmenu/presentation/notifications/notifications.dart';
import 'package:qmenu/presentation/profile/profile_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  late int _currentIndex;
  @override
  void initState() {
    setState(() {
      _currentIndex = 0;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: [HomeScreen(), FavoriteScreen(), Notifications(), ProfileScreen()]
          .elementAt(_currentIndex),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          top: 2,
          right: 2,
          left: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
          // color: Colors.red,
          boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0, 8), blurRadius: 3.0, spreadRadius: 3.0),BoxShadow(color: Colors.grey.shade300, offset: Offset(1, 0), blurRadius: 8.0, spreadRadius: 0.2)]
        ),
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(20), topEnd: Radius.circular(20)),
          ),
          height: 70,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkResponse(
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Image.asset('assets/images/home.png', height: 20)),
              InkResponse(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Image.asset('assets/images/settings.png', height: 20)),
              Container(
                width: 60,
              ),
              InkResponse(
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: Image.asset('assets/images/notification.png',
                      height: 20)),
              InkResponse(
                  onTap: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                  child:
                      Image.asset('assets/images/person_icon.png', height: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
