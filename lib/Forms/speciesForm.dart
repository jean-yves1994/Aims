import 'package:aims/const/appColors.dart';
import 'package:aims/ui/Drawer/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/customButton.dart';

class SpeciesFormScreen extends StatefulWidget {
  const SpeciesFormScreen({Key? key}) : super(key: key);

  @override
  State<SpeciesFormScreen> createState() => _SpeciesFormScreen();
}

class _SpeciesFormScreen extends State<SpeciesFormScreen> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    String? selectedValue;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text('Species information'),
          centerTitle: true,
          backgroundColor: AppColors.myGreen,
          elevation: 7,
          leading: Align(
            alignment: Alignment(0.0, 0.0),
            child: Builder(
              builder: (context) => GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(color: Colors.white, size: 36, CupertinoIcons.back),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Farmer ID'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Category'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Scientific Name'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Number of Species'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Farmer First Name'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Farmer Last Name'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Province'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('District'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Longitude'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    new Flexible(
                      child: new TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Latitude'),
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // elevated button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customButton(
                  "Submit",
                  () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
