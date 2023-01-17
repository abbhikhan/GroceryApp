// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  String? name;
  String? image;

  Catagories({required this.name, required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Image.asset('$image'),
          Text('$name'),
        ],
      ),
    );
  }
}
