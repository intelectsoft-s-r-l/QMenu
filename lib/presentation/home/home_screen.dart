import 'package:flutter/material.dart';
import 'package:qmenu/presentation/home/widgets/bottom_scroll_list.dart';
import 'package:qmenu/presentation/home/widgets/home_search_fild.dart';
import 'package:qmenu/presentation/home/widgets/top_scroll_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final List list = [
    {
      'url':
          'https://www.webbsdirect.co.uk/images/stores/Rest-Header-800x800px.jpg',
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
          'https://www.webbsdirect.co.uk/images/stores/Rest-Header-800x800px.jpg',
      'status': 'Deschis',
      'raiting': 4.5,
      'name': 'Happy Bones',
      'address': '394 Stefan cel Mare, Chisinau, Moldova',
      'menu': 'Japoneza',
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
          'https://www.webbsdirect.co.uk/images/stores/WCH-Restaurant-Header-800x800px.jpg',
      'status': 'Deschis',
      'raiting': 4.5,
      'name': 'Happy Bones',
      'address': '394 Stefan cel Mare, Chisinau, Moldova',
      'menu': 'Chineza',
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
    const _kFontFam = 'MyFlutterApp';
    const String? _kFontPkg = null;

    const IconData home_1 = IconData(0xe806, fontFamily: _kFontFam, fontPackage: _kFontPkg);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * .08,
              ),
              const HomeSearchField(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Restaurante',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'Toate (45)',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TopScrollList(list: list, axis: Axis.horizontal),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Bucatarii',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      'Toate (9)',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              BottomScrollList(list: list),
            ],
          ),
        ),
      ),
    );
  }
}
