import 'package:aims/const/appColors.dart';
import 'package:aims/ui/Drawer/navigation_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/customButton.dart';

class LiveStockFormScreen extends StatefulWidget {
  const LiveStockFormScreen({Key? key}) : super(key: key);

  @override
  State<LiveStockFormScreen> createState() => _LiveStockFormScreen();
}

class _LiveStockFormScreen extends State<LiveStockFormScreen> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  NavigationDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: const Text('Livestock Information'),
          centerTitle: true,
          backgroundColor: AppColors.myGreen,
          elevation: 7,
          leading: Align(
            alignment: const Alignment(0.0, 0.0),
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 0.2.w, bottom: 3.w, right: 8.w, left: 8.w),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Livestock Production',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20)),
                            ],
                          ),
                        ),
                        SizedBox(height: 14),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  //controller: _emailController,
                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                        fontSize: 14.sp,
                                        color: const Color(0xFF414041),
                                      ), */
                                    labelText: 'Farmer ID',
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  // controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ),
                                    labelText: 'Species',
                                    suffixIcon:
                                        Icon(Icons.arrow_drop_down, size: 24),
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextField(
                                  //controller: _emailController,

                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: const Color(0xFF414041),
                                        ), */
                                    labelText: 'Province',
                                    
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  // controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ),
                                    labelText: 'District',
                                    
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  //controller: _emailController,
                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ), */
                                    labelText: 'Production Type',
                                    suffixIcon:
                                        Icon(Icons.arrow_drop_down, size: 24),
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  // controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ),
                                    labelText: 'Quantity',
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextField(
                                  //controller: _emailController,

                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: const Color(0xFF414041),
                                        ), */
                                    labelText: 'Select Season',
                                    suffixIcon:
                                        Icon(Icons.arrow_drop_down, size: 24),
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  // controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ),
                                    labelText: 'Ward',
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: TextField(
                                  //controller: _emailController,

                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                          fontSize: 14.sp,
                                          color: const Color(0xFF414041),
                                        ), */
                                    labelText: 'Longitude',
                                    suffixIcon:
                                        Icon(Icons.arrow_drop_down, size: 24),
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  // controller: _passwordController,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ),
                                    labelText: 'Latitude',
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 15.h,
                        ),
                        // elevated button
                        customButton(
                          "Submit",
                          () {
                            //signIn method call
                            /*  Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const BottomNavController())); */
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
