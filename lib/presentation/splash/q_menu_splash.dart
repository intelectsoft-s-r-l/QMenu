import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:qmenu/presentation/auth/auth_screen.dart';
import 'package:qmenu/presentation/widgets/fon_image_widget.dart';

class QMenuSplash extends StatefulWidget {
  @override
  _QMenuSplashState createState() => _QMenuSplashState();
}

class _QMenuSplashState extends State<QMenuSplash> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    super.initState();
    _loadPage();
  }

  _loadPage() {
    return Timer(const Duration(seconds: 5), _navigatePage);
  }

  _navigatePage() {
    Navigator.pushReplacement(
      context,
      CupertinoPageRoute(
        builder: (BuildContext context) => QMenuAuthScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            const FonImageWidget(path: 'assets/images/splash.png'),
            Positioned(
              top: size.height / 2,
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: Text(
                  'QMenu',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
