// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:plant_app2/pages/Colors.dart';

class Tile2 extends StatelessWidget {
  Tile2({super.key, required this.IconPath});

  String IconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Image.asset(IconPath),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 10),
            color: MainColor.withOpacity(0.3),
            blurRadius: 20)
      ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
    );
  }
}
