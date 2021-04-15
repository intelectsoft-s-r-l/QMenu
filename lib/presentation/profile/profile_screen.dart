import 'package:flutter/material.dart';
import 'package:qmenu/presentation/profile/edit_profile_screen.dart';
import 'package:qmenu/presentation/widgets/menu_item_widget.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  final List list = [
    {
      'url':
          'https://upload.wikimedia.org/wikipedia/commons/5/5b/India_Gate_600x400.jpg',
      'status': 'Deschis',
      'raiting': 4.5,
      'name': 'Happy Bones',
      'address': '394 Stefan cel Mare, Chisinau, Moldova',
      'menu': 'Italiana',
      'distance': 12
    },
    {
      'url':
          'https://www.webbsdirect.co.uk/images/stores/WCH-Restaurant-Header-800x800px.jpg',
      'status': 'Deschis',
      'raiting': 4.5,
      'name': 'Happy Bones',
      'address': '394 Stefan cel Mare, Chisinau, Moldova',
      'menu': 'Moldoveneasca',
      'distance': 12
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            height: size.height,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text('My Profile'),
                const SizedBox(height: 40),
                const CircleAvatar(radius: 60),
                const SizedBox(height: 20),
                const Text('John Williams'),
                const SizedBox(height: 10),
                const Text('john.williams@gmail.com',
                    style: TextStyle(color: Colors.black38, fontSize: 16)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const Text(
                          '250',
                          style: TextStyle(color: Color(0xFF5663FF)),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Recenzii',
                          style: TextStyle(color: Colors.black38, fontSize: 15),
                        ),
                      ],
                    ),
                    Container(
                        height: 25,
                        child: const VerticalDivider(
                          width: 50,
                          thickness: 1,
                        )),
                    Column(
                      children: [
                        const Text(
                          '100',
                          style: TextStyle(color: Color(0xFF5663FF)),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Visite',
                          style: TextStyle(color: Colors.black38, fontSize: 15),
                        ),
                      ],
                    ),
                    Container(
                        height: 30,
                        child: const VerticalDivider(
                          width: 50,
                          thickness: 1,
                        )),
                    Column(
                      children: [
                        const Text(
                          '30',
                          style: TextStyle(color: Color(0xFF5663FF)),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Favorite',
                          style: TextStyle(color: Colors.black38, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            primary: const Color(0xFF5663FF)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EditProfileScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Editeaza profilul',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Setari',
                          style: TextStyle(color: Colors.black38, fontSize: 13),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: MenuItemWidget(list: list, size: size, status: false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
