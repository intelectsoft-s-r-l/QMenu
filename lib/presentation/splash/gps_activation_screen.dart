import 'package:flutter/material.dart';
import 'package:qmenu/presentation/widgets/fon_image_widget.dart';

class GPSScreen extends StatelessWidget {
  const GPSScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          const FonImageWidget(path: 'assets/images/intermediate.png'),
          Positioned(
            top: size.height * .08,
            right: size.width * .08,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white.withOpacity(0.3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('Skip'),
            ),
          ),
          Positioned(
            top: size.height * .35,
            left: size.width * .12,
            child: const Text('Salut John,'),
          ),
          Positioned(
            top: size.height * .42,
            left: size.width * .12,
            child: const Text('Bine ai venit in'),
          ),
          Positioned(
            top: size.height * .49,
            left: size.width * .12,
            child: const Text(
              'QMenu',
              style: TextStyle(color: Color(0xFFFFCC00)),
            ),
          ),
          Positioned(
            top: size.height * .66,
            left: size.width * .12,
            child: Container(
              width: size.width * .76,
              child: Text(
                'Porniti GPS-ul pentru a gasi',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * .7,
            left: size.width * .12,
            child: Container(
              width: size.width * .76,
              child: Text(
                'propuneri de restaurante mai bune',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * .74,
            left: size.width * .12,
            child: Text(
              'linga tine.',
              style: TextStyle(
                fontSize: 23,
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          Positioned(
            left: size.width * .12,
            bottom: size.height * .05,
            child: Container(
              height: size.height * .06,
              width: size.width * .76,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF5663FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text('Porniti GPS'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
