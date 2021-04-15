import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:qmenu/presentation/bottom_navigation_bar/bottom_nav_bar.dart';
import 'package:qmenu/presentation/widgets/fon_image_widget.dart';

class GPSScreen extends StatefulWidget {
  const GPSScreen({Key? key}) : super(key: key);

  @override
  _GPSScreenState createState() => _GPSScreenState();
}

void getPermision() async {
  final position = await Geolocator.getCurrentPosition();
  print(position);
}

class _GPSScreenState extends State<GPSScreen> {
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
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>const BottomNavigationBarWidget()));
              },
              child: const Text('Skip'),
            ),
          ),
          Positioned(
            top: size.height * .35,
            left: size.width * .12,
            child: const Text('Salut John,', style: TextStyle(fontSize: 55)),
          ),
          Positioned(
            top: size.height * .42,
            left: size.width * .12,
            child: const Text('Bine ai venit in' , style: TextStyle(fontSize: 55),),
          ),
          Positioned(
            top: size.height * .49,
            left: size.width * .12,
            child: const Text(
              'QMenu',
              style: TextStyle(color: Color(0xFFFFCC00) ,fontSize: 55),
            ),
          ),
          Positioned(
            top: size.height * .70,
            left: size.width * .12,
            child: Container(
              width: size.width * .76,
              child: Text(
                'Porniti GPS-ul pentru a gasi\npropuneri de restaurante mai bune linga tine.',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white.withOpacity(0.6),
                ),
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
                onPressed: getPermision,
                child: const Text('Porniti GPS'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
