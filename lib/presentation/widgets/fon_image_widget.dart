import 'package:flutter/material.dart';

class FonImageWidget extends StatelessWidget {
  final String path;

  const FonImageWidget({Key? key, required this.path}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: Image.asset(
          path,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
