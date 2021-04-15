import 'package:flutter/material.dart';

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    Key? key,
    required this.list,
    required this.size,
    required this.status,
  }) : super(key: key);

  final List list;
  final Size size;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: 150,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.network(
                    list[index]['url'],
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 10,
                child: Container(
                  alignment: Alignment.center,
                  width: status ? 55 : 0,
                  height: status ? 30 : 0,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: status
                      ? Text(
                          list[index]['status'],
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        )
                      : null,
                ),
              ),
              Positioned(
                top: 20,
                right: 10,
                child: Container(
                    alignment: Alignment.center,
                    width: 42,
                    // height: 30,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        ),
                        Text(
                          '${list[index]['raiting']}',
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ),
              Positioned(
                bottom: 30,
                left: 10,
                child: Row(
                  children: [
                    Text(
                      list[index]['name'],
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.pink[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        list[index]['menu'],
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '${list[index]['distance']} Km',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    list[index]['address'],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  )),
            ],
          ),
        );
      },
    );
  }
}
