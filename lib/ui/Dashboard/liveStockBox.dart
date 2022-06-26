import 'package:flutter/material.dart';

import '../../const/appColors.dart';

class LiveStockBox extends StatefulWidget {
  const LiveStockBox({Key? key}) : super(key: key);

  @override
  State<LiveStockBox> createState() => _LiveStockBoxState();
}

class _LiveStockBoxState extends State<LiveStockBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Box taped');
      },
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 10)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    'Livestock',
                    style: TextStyle(
                        color: Color.fromARGB(252, 13, 14, 13),
                        fontFamily: 'MontSerrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.show_chart,
                  color: AppColors.myGreen,
                  size: 40,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
