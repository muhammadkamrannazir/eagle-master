import 'package:eagle/theme2/color.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Brands_names extends StatelessWidget {
  const Brands_names({Key? key, required this.color, required this.images})
      : super(key: key);
  final Color color;
  final AssetImage images;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 10),
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.05),
            spreadRadius: .5,
            blurRadius: .5,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: images,
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}
