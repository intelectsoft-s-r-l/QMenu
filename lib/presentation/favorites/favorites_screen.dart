import 'package:flutter/material.dart';
import 'package:qmenu/presentation/widgets/menu_item_widget.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({Key? key}) : super(key: key);
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'My Favourite',
          style: TextStyle(color: Colors.black, fontFamily: 'JosefinSans'),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          height: size.height,
          child: MenuItemWidget(list: list, size: size,status:true),
        ),
      ),
    );
  }
}
