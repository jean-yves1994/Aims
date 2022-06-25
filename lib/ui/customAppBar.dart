import 'package:aims/const/AppColors.dart';
import 'package:aims/ui/Drawer/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(right: 70),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    )
                  ]),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                    color: AppColors.myGreen, size: 30, CupertinoIcons.bars),
              ),
            ),
          ),
          const Text(
            'Forms',
            style: TextStyle(
                fontFamily: 'MontSerrat',
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
