import 'package:flutter/material.dart';
import 'package:plant_app2/Widgets/BoldText.dart';
import 'package:plant_app2/Widgets/LightText.dart';
import 'package:plant_app2/Widgets/Tile2.dart';
import 'package:plant_app2/pages/Colors.dart';

class DetailedViewPage extends StatelessWidget {
  DetailedViewPage({
    super.key,
    required this.ImagePath,
    required this.Title,
    required this.Price,
  });

  String ImagePath;
  String Title;
  String Price;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                // First Column

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: Offset(-15, 2),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Image.asset("assets/icons/back_arrow.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 90,
                      ),
                      Tile2(IconPath: "assets/icons/sun.png"),
                      SizedBox(
                        height: 60,
                      ),
                      Tile2(IconPath: "assets/icons/icon_2.png"),
                      SizedBox(
                        height: 60,
                      ),
                      Tile2(IconPath: "assets/icons/icon_3.png"),
                      SizedBox(
                        height: 60,
                      ),
                      Tile2(
                        IconPath: "assets/icons/icon_4.png",
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: 20,
                ),

                // Second Column

                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 700,
                          width: 290,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(-10, 10),
                                    blurRadius: 30,
                                    color: MainColor.withOpacity(0.3))
                              ],
                              color: MainColor,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/img.png")),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(70))),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 230, top: 54),
                          height: 50,
                          width: 50,
                          child: Image.asset("assets/icons/more.png"),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                // 1st Column

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: BoldText(
                        text: "Angelica",
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: LightText(
                        text: "Russia",
                        color: MainColor.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      width: 150,
                      decoration: BoxDecoration(
                          color: MainColor,
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(30))),
                      child: Center(
                          child: LightText(
                        text: "Buy Now",
                        color: Colors.white,
                      )),
                    )
                  ],
                ),
                Spacer(),
                // 2nd Column
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      LightText(
                        text: "     \$440",
                        size: 30,
                        color: MainColor,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      LightText(text: "Description          ")
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
