import 'package:aims/const/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Drawer/navigation_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: header(),
          centerTitle: true,
          backgroundColor: AppColors.myGreen,
          elevation: 20,
          leading: Align(
            alignment: Alignment(0.0, 0.0),
            child: Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(color: Colors.white, size: 36, CupertinoIcons.bars),
              ),
            ),
          ),
        ),
      ),
      body: Stack(children: [
        Positioned(
          top: 10,
          left: 20,
          right: 20,
          bottom: 0,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: GestureDetector(
                        onTap: () {
                          print('Crop Taped');
                        },
                        child: cropCards()),
                  ),
                  Container(
                    child: GestureDetector(
                        onTap: () {
                          print('Water Taped');
                        },
                        child: waterCards()),
                  ),
                  Container(
                    child: GestureDetector(
                        onTap: () {
                          print('Land Taped');
                        },
                        child: landCards()),
                  ),
                  Container(
                    child: GestureDetector(
                        onTap: () {
                          print('Livestock Taped');
                        },
                        child: livestockCards()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget header() {
    return Row(
      children: [
        RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Welcome back, ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'amontSerrat',
                  fontSize: 23),
            ),
            TextSpan(
              text: "Alex",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'MontSerrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 23),
            ),
          ]),
        ),
      ],
    );
  }

  Widget cropCards() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 19),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: AppColors.myGreen,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Crops",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    fontFamily: 'MontSerrat'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      "103",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Kg",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Used fertilizer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'MontSerrat'),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            Container(
              width: 180,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff375BE9)),
                    child: Center(
                      child: Text(
                        "8",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tones",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Crop production",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff375BE9)),
                          child: Center(
                            child: Text(
                              "32",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Projects",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "8 this month",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.blueGrey[500]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "mobile App",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "branding",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

//Water card
  Widget waterCards() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: AppColors.myGreen,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Water",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    fontFamily: 'MontSerrat'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      "103",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Kg",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Used fertilizer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'MontSerrat'),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            Container(
              width: 180,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff375BE9)),
                    child: Center(
                      child: Text(
                        "8",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tones",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Crop production",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff375BE9)),
                          child: Center(
                            child: Text(
                              "32",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Projects",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "8 this month",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.blueGrey[500]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "mobile App",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "branding",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

//Land Card
  Widget landCards() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: AppColors.myGreen,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Land",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    fontFamily: 'MontSerrat'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      "103",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Kg",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Used fertilizer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'MontSerrat'),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            Container(
              width: 180,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff375BE9)),
                    child: Center(
                      child: Text(
                        "8",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tones",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Crop production",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff375BE9)),
                          child: Center(
                            child: Text(
                              "32",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Projects",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "8 this month",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.blueGrey[500]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "mobile App",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "branding",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

//Livestock card
  Widget livestockCards() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: AppColors.myGreen,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Livestock",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    fontFamily: 'MontSerrat'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      "103",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Kg",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Used fertilizer",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'MontSerrat'),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            Container(
              width: 180,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff375BE9)),
                    child: Center(
                      child: Text(
                        "8",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tones",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Crop production",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff375BE9)),
                          child: Center(
                            child: Text(
                              "32",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Projects",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "8 this month",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.blueGrey[500]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "mobile App",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "branding",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
