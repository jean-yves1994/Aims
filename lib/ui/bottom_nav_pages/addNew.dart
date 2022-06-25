import 'package:aims/const/AppColors.dart';
import 'package:aims/ui/Drawer/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNew extends StatefulWidget {
  const AddNew({Key? key}) : super(key: key);

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
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
          title: Text('Forms'),
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
                child: Icon(color: Colors.white, size: 36, CupertinoIcons.back),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Select modal to start collecting data',
            style: TextStyle(
                fontFamily: 'MontSerrat',
                fontSize: 18,
                fontWeight: FontWeight.w400)),
        SizedBox(
          height: height * 0.05,
        ),
        GestureDetector(
          onTap: () {
            //print('Taped');
            _onCropSelected();
          },
          child: Container(
            padding: EdgeInsets.all(5),
            height: 90,
            child: Stack(
              children: [
                Container(
                  child: ListTile(
                    leading: Container(
                        child: Icon(
                      Icons.grass,
                      size: 33,
                      color: Color.fromARGB(255, 54, 102, 206),
                    )),
                    title: Text(
                      'Crop',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text('This is a crop tile description',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromARGB(255, 224, 72, 67),
                    ),
                  ),
                  width: width * 0.95,
                  decoration: BoxDecoration(
                      color: AppColors.myGreen.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        GestureDetector(
          onTap: () {
            print('Taped');
          },
          child: Container(
            height: 90,
            child: Stack(
              children: [
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.water_drop_outlined,
                      size: 33,
                      color: Color.fromARGB(255, 54, 102, 206),
                    ),
                    title: Text('Water',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400)),
                    subtitle: Text('This is a water tile description',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromARGB(255, 224, 72, 67),
                    ),
                  ),
                  width: width * 0.95,
                  decoration: BoxDecoration(
                      color: AppColors.myGreen.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        GestureDetector(
          onTap: () {
            print('Taped');
          },
          child: Container(
            height: 90,
            child: Stack(
              children: [
                Container(
                  child: ListTile(
                    leading: Icon(
                      Icons.landscape_outlined,
                      size: 33,
                      color: Color.fromARGB(255, 54, 102, 206),
                    ),
                    title: Text('Land',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400)),
                    subtitle: Text('This is a land tile description',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromARGB(255, 224, 72, 67),
                    ),
                  ),
                  width: width * 0.95,
                  decoration: BoxDecoration(
                      color: AppColors.myGreen.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        GestureDetector(
          onTap: () {
            _onLivestockSelected();
          },
          child: Container(
            height: 90,
            child: Stack(
              children: [
                Container(
                  width: width * 0.95,
                  decoration: BoxDecoration(
                      color: AppColors.myGreen.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Container(
                        child: Icon(
                      Icons.show_chart_outlined,
                      size: 33,
                      color: Color.fromARGB(255, 54, 102, 206),
                    )),
                    title: Text('Livestock',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400)),
                    subtitle: Text('This is a livestock tile description',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color.fromARGB(255, 224, 72, 67),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }

  void _onCropSelected() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        )),
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 3.0, top: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'Crop Information',
                                  style: TextStyle(
                                      fontFamily: 'MontSerrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 3.0, top: 8.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(29, 38, 222, 130),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text('Crop Production'),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 3.0, top: 0.5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(29, 38, 222, 130),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text('Fertilizers Distribution'),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 3.0, top: 0.5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(29, 38, 222, 130),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text('Seed Distribution'),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _onLivestockSelected() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        )),
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 3.0, top: 8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text(
                                  'Livestock Information',
                                  style: TextStyle(
                                      fontFamily: 'MontSerrat',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 3.0, top: 8.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(29, 38, 222, 130),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text('Livestock Production'),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 8.0, right: 8.0, bottom: 3.0, top: 0.5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(29, 38, 222, 130),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Text('Medecine Distribution'),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Icon(Icons.arrow_forward_ios, size: 15),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
/* body: ListView(
        children: [
          const AppBarWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 30,
              child: const Padding(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  'Select modal to collect data',
                  style: TextStyle(
                      color: Color.fromARGB(252, 13, 14, 13),
                      fontFamily: 'MontSerrat',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const CardListBox(),
        ],
      ), */
