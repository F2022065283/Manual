// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:plant_app2/Widgets/BoldText.dart';
import 'package:plant_app2/Widgets/LightText.dart';
import 'package:plant_app2/pages/Colors.dart';
import 'package:plant_app2/pages/DetailedViewPage.dart';

class Tile1 extends StatelessWidget {
  Tile1({
    super.key,
    required this.ImagePath,
    required this.Price,
    required this.Name,
    required this.Country,
  });

  String ImagePath;
  String Price;
  String Name;
  String Country;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Path
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailedViewPage(
                    ImagePath: ImagePath, Title: Name, Price: Price)));
      },
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 20,
              offset: Offset(0, 5),
              color: MainColor.withOpacity(0.2))
        ], color: Colors.white, borderRadius: BorderRadius.circular(13)),
        height: 290,
        width: 180,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(ImagePath)),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                children: [
                  BoldText(
                    text: Name,
                    size: 17,
                  ),
                  Spacer(),
                  LightText(
                    text: Price,
                    color: MainColor,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: BoldText(
                text: Country,
                color: MainColor.withOpacity(0.4),
              ),
            )
          ],
        ),
      ),
    );
  }
}
