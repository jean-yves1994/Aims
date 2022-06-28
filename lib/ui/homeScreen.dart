import 'package:aims/ui/bottom_nav_pages/notifications.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:aims/const/appColors.dart';
import 'package:aims/ui/bottom_nav_pages/home.dart';
import 'package:aims/ui/bottom_nav_pages/addNew.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  BottomNavControllerState createState() => BottomNavControllerState();
}

class BottomNavControllerState extends State<BottomNavController> {
  final _pages = [const Home(), const AddNew(), const Notifications()];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: AppColors.myGreen,
        animationDuration: const Duration(milliseconds: 200),
        height: 65.0,
        items: [
          Icon(Icons.home),
          Icon(
            Icons.add_outlined,
            size: 30,
          ),
          Icon(Icons.notifications_active)
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
