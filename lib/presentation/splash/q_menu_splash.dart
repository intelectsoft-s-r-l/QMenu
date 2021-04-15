import 'package:flutter/material.dart';
import 'package:qmenu/presentation/widgets/fon_image_widget.dart';

class QMenuSplash extends StatelessWidget {
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
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
