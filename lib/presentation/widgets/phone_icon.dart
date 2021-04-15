import 'package:flutter/material.dart';

class PhoneIcon extends StatelessWidget {
  final Color color;

  const PhoneIcon({Key? key, required this.color}) : super(key: key);
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
            border: Border.all(color: color),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            Icons.phone,
            color: color,
            //size: 20,
          ),
        ),
      ],
    );
  }
}
