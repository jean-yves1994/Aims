import 'package:aims/const/AppColors.dart';
import 'package:flutter/material.dart';

class CardListBox extends StatelessWidget {
  const CardListBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 9),
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: AppColors.myGreen,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        //add row
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:const [
                  Text(
                    'Crop',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'It is a long established fact that a reader will be distracted',
                    style: TextStyle(fontFamily: 'MontSerrat'),
                  ),
                  Icon(
                Icons.grass,
                size: 60,
                color: AppColors.myGreen,
              ),
                ],
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              
            ]),
          ],
        ),
      ),
    );
  }
}
