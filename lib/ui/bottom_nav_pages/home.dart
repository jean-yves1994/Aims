// ignore_for_file: unnecessary_new

import 'package:aims/const/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Drawer/navigation_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String token = "";
  String username = "";

  @override
  void initState() {
    super.initState();
    getCredentials();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
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
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
                child: Container(
                  child: GestureDetector(
                      onTap: () {
                        print('Crop Taped');
                      },
                      child: Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 90, 32, 184),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircularPercentIndicator(
                                  radius: 45,
                                  lineWidth: 15,
                                  center: Text(
                                    '70%',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  percent: 0.7,
                                  progressColor: Colors.white,
                                  circularStrokeCap: CircularStrokeCap.round,
                                  backgroundColor:
                                      Color.fromARGB(255, 181, 162, 216),
                                  animation: true,
                                  animationDuration: 700,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Text('Overal productions',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontFamily: 'MontSerrat',
                                                fontWeight: FontWeight.w600)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
              ),
              cropCards(),
              cropCards2(),
            ],
          ),
        ),
      ]),
    );
  }

  void getCredentials() async {
    SharedPreferences storage = await SharedPreferences.getInstance();
    setState(() {
      token = storage.getString("login")!;
      username = storage.getString("name")!;
    });
  }

  Widget header() {
    return Row(
      children: [
        RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Hi, ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'amontSerrat',
                  fontSize: 23),
            ),
            TextSpan(
              text: username[0].toUpperCase() + username.substring(1),
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
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4, right: 15, left: 15),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      'Distributed Seeds',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'MontSerrat',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 46, 32, 179)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      '1240 ',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      'Tones',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      'Seeds Quantity',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'MontSerrat',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 46, 32, 179)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      '68029 ',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      'Tones',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      'Available Fertilizers',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'MontSerrat',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 46, 32, 179)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      '733568 ',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(
                      'Tones',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cropCards2() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('Cash-crops',
                  style: TextStyle(
                      fontFamily: 'MontSerrat', fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.5,
                progressColor: Color.fromARGB(255, 19, 37, 202),
                backgroundColor: Colors.grey.shade200,
                leading: CircleAvatar(backgroundColor: Colors.blue.shade100),
                barRadius: Radius.circular(5),
                animation: true,
                animationDuration: 700,
              ),
            ),
            const Text('Food-crops',
                style: TextStyle(
                    fontFamily: 'MontSerrat', fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.7,
                progressColor: Color.fromARGB(255, 30, 255, 86),
                backgroundColor: Colors.grey.shade200,
                leading: CircleAvatar(backgroundColor: Colors.green.shade100),
                barRadius: Radius.circular(5),
                animation: true,
                animationDuration: 700,
              ),
            ),
            Text('Export-crops',
                style: TextStyle(
                    fontFamily: 'MontSerrat', fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.6,
                progressColor: Color.fromARGB(255, 248, 212, 6),
                backgroundColor: Colors.grey.shade200,
                leading: CircleAvatar(backgroundColor: Colors.blue.shade100),
                barRadius: Radius.circular(5),
                animation: true,
                animationDuration: 700,
              ),
            ),
            Text('Industrial-crops',
                style: TextStyle(
                    fontFamily: 'MontSerrat', fontWeight: FontWeight.w600)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: 0.3,
                progressColor: Color.fromARGB(255, 248, 3, 3),
                backgroundColor: Colors.grey.shade200,
                leading: CircleAvatar(backgroundColor: Colors.red.shade100),
                barRadius: Radius.circular(5),
                animation: true,
                animationDuration: 700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
