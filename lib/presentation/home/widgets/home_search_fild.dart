import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          filled: false,
          focusColor: Colors.white,
          hintText: 'Cauta Restaurante',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.tune_rounded),
          hintStyle: const TextStyle(color: Colors.black26),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black38,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black38,
            ),
          ),
        ),
      ),
    );
  }
}
