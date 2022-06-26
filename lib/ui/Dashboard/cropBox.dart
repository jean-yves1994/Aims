import 'package:flutter/material.dart';

import '../../const/appColors.dart';

class CropBox extends StatefulWidget {
  const CropBox({Key? key}) : super(key: key);

  @override
  State<CropBox> createState() => _CropBoxState();
}

class _CropBoxState extends State<CropBox> {
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
                    'Crop',
                    style: TextStyle(
                        color: Color.fromARGB(252, 13, 14, 13),
                        fontFamily: 'MontSerrat',
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.myGreen.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.grass_outlined,
                    color: Color.fromARGB(252, 72, 155, 95),
                    size: 40,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                          left: 5, right: 10, top: 5, bottom: 10),
                      child: const Text(
                        '8',
                        style: TextStyle(
                            color: Color.fromARGB(252, 13, 14, 13),
                            fontFamily: 'MontSerrat',
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                //const Spacer(),

                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Tones',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Crop production',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 73,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.myGreen, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Area'),
                      Text(
                        '12',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text('Ha')
                    ],
                  ),
                ),
                Container(
                  width: 73,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.myGreen, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text('Used'),
                          Text('Fertilizer'),
                        ],
                      ),
                      const Text(
                        '103',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const Text('Kg')
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 7.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 155,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: AppColors.myGreen, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '320',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              'Kg',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              'Seeds',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '23',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              'Types',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
