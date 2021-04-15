import 'package:flutter/material.dart';

class BottomScrollList extends StatefulWidget {
  /* const */ BottomScrollList({
    Key? key,
    required this.list,
  }) : super(key: key);

  final List list;

  @override
  _BottomScrollListState createState() => _BottomScrollListState();
}

class _BottomScrollListState extends State<BottomScrollList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      child: ListView.separated(
        itemCount: widget.list.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ShaderMask(
                blendMode: BlendMode.modulate,
                shaderCallback: (bounds) => LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromRGBO(255, 0, 0, .7),
                    Colors.amber.withOpacity(.7),
                  ],
                ).createShader(bounds),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://fastly.4sqi.net/img/general/200x200/11590240_Dr00h6RJYsW6wpjzAFVHam7jjGG4M0M36jCjzzLFMvg.jpg',
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  alignment: Alignment.center,
                  height: 85,
                  width: 85,
                  //color: Colors.pink.withOpacity(.4),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    widget.list[index]['menu'],
                    style: const TextStyle(fontSize: 19),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
