import 'package:flutter/material.dart';

import 'package:qmenu/presentation/splash/q_menu_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        //primaryColor: Colors.white,
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            //color: Color(0xFF3E3F68),
            fontFamily: 'JosefinSans',
            //fontSize: 55,
          ),
          bodyText2: TextStyle(
            color: Colors.white,
            fontFamily: 'JosefinSans',
            fontStyle: FontStyle.normal,
            fontSize: 35,
          ),
          button: TextStyle(
            color: Colors.white,
            fontFamily: 'JosefinSans',
            fontStyle: FontStyle.normal,
            fontSize: 18,
          ),
          subtitle1: TextStyle(
            color: Colors.black,
            fontFamily: 'JosefinSans',
            //fontStyle: FontStyle.normal,
            fontSize: 25,
          ),
          subtitle2: TextStyle(
            color: Colors.black38,
            fontFamily: 'JosefinSans',
            //fontStyle: FontStyle.normal,
            fontSize: 18,
          ),
          headline1: TextStyle(
            color: Color(0xFF3E3F68),
            fontFamily: 'JosefinSans',
            fontSize: 55,
          ),
        ),
        /*  inputDecorationTheme: InputDecorationTheme( */
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  QMenuSplash(); 
  }
}
