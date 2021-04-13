import 'package:flutter/material.dart';
import 'package:qmenu/presentation/widgets/fon_image_widget.dart';

class QMenuAuthScreen extends StatefulWidget {
  @override
  _QMenuAuthScreenState createState() => _QMenuAuthScreenState();
}

class _QMenuAuthScreenState extends State<QMenuAuthScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        child: Stack(
          children: [
            const FonImageWidget(path: 'assets/images/login.png'),
            Container(
              width: size.width,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * .19,
                    ),
                    Text(
                      'QMenu',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    SizedBox(
                      height: size.height * .162,
                    ),
                    Container(
                      width: size.width * .7,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Telefon',
                          prefixIcon: PhoneIcon(),
                          fillColor: Colors.white.withOpacity(.2),
                          filled: true,
                          hintStyle: const TextStyle(
                              color: Colors.white, fontFamily: 'JosefinSans'),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * .09,
                    ),
                    const Text(
                      'sau',
                      style: TextStyle(fontSize: 23),
                    ),
                    Container(
                      width: size.width * .4,
                      child: const Divider(
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          filterQuality: FilterQuality.high,
                          height: 50,
                        ),
                        Image.asset(
                          'assets/images/google.png',
                          filterQuality: FilterQuality.high,
                          height: 50,
                        ),
                        Image.asset(
                          'assets/images/apple.png',
                          filterQuality: FilterQuality.high,
                          height: 50,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .09,
                    ),
                    Container(
                      width: size.width * .7,
                      height: size.height * .06,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF5663FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Autentificare',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * .05),
                    const Text(
                      'Mai tirziu',
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      width: size.width * .4,
                      child: const Divider(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PhoneIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 30,
          width: 30,
          //padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.phone,
            color: Colors.white,
            //size: 20,
          ),
        ),
      ],
    );
  }
}
