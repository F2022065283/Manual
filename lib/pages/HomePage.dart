import 'package:flutter/material.dart';
import 'package:plant_app2/Widgets/BoldText.dart';
import 'package:plant_app2/Widgets/LightText.dart';
import 'package:plant_app2/Widgets/Tile1.dart';
import 'package:plant_app2/pages/Colors.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/flower.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/heart-icon.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/icons/user-icon.png"), label: ""),
        ]),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      child: Container(
                          height: 240,
                          width: double.maxFinite,
                          color: MainColor)),
                  Padding(
                    padding: const EdgeInsets.only(top: 35, left: 20),
                    child: Image.asset("assets/icons/menu.png"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 80, left: 20, right: 20),
                    child: Row(
                      children: [
                        BoldText(
                          text: "Hi Uishopy!",
                          size: 30,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Image.asset("assets/images/logo.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 205, left: 20, right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: MainColor.withOpacity(0.3),
                                offset: Offset(0, 10),
                                blurRadius: 20)
                          ]),
                      child: Row(
                        children: [
                          Container(
                              height: 70,
                              width: 300,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    label: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 10),
                                      child: LightText(
                                        text: "Search",
                                        color: MainColor.withOpacity(0.5),
                                      ),
                                    ),
                                    border: InputBorder.none),
                              )),
                          Container(
                              height: 70,
                              width: 70,
                              child: Image.asset("assets/icons/search.png")),
                        ],
                      ),
                      width: double.maxFinite,
                      height: 70,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        BoldText(text: "Recommended"),
                        Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 30,
                            width: 70,
                            color: MainColor,
                            child: Center(
                              child: BoldText(
                                text: "More",
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 290,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Tile1(
                              ImagePath: "assets/images/image_1.png",
                              Price: "\$400",
                              Name: "SAMANTHA",
                              Country: "Russia"),
                          SizedBox(
                            width: 20,
                          ),
                          Tile1(
                              ImagePath: "assets/images/image_2.png",
                              Price: "\$540",
                              Name: "ANGELICA",
                              Country: "Russia"),
                          SizedBox(
                            width: 20,
                          ),
                          Tile1(
                              ImagePath: "assets/images/image_3.png",
                              Price: "\$400",
                              Name: "SAMANTHA",
                              Country: "Russia"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        BoldText(text: "Featured Plants"),
                        Spacer(),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 30,
                            width: 70,
                            color: MainColor,
                            child: Center(
                              child: BoldText(
                                text: "More",
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: double.maxFinite,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            height: 20,
                            width: 270,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/bottom_img_1.png"))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 20,
                            width: 270,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/bottom_img_2.png"))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
