import 'dart:convert';
import 'dart:io';

import 'package:aims/const/appColors.dart';
import 'package:aims/ui/Drawer/navigation_drawer.dart';
import 'package:aims/ui/bottom_nav_pages/addNew.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

import '../widgets/customButton.dart';

class FarmerRegisterForm extends StatefulWidget {
  const FarmerRegisterForm({Key? key}) : super(key: key);

  @override
  State<FarmerRegisterForm> createState() => _FarmerRegisterForm();
}

class _FarmerRegisterForm extends State<FarmerRegisterForm> {
  TextEditingController idController = TextEditingController();
  TextEditingController wardController = TextEditingController();
  TextEditingController localtyController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  TextEditingController provinceController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController longitudeController = TextEditingController();
  TextEditingController latitudeController = TextEditingController();

  void farmerRegister(String idno, wardno, locality, name, sname, tel, province,
      district, lng, lat) async {
    HttpOverrides.global = MyHttpOverrides();
    try {
      Response response = await post(
          Uri.parse('https://aims.estateconsultinginc.com/api/register'),
          body: {
            'idno': idController,
            'wardno': wardController,
            'locality': localtyController,
            'name': firstNameController,
            'sname': lastNameController,
            'tel': telephoneController,
            'province': provinceController,
            'district': districtController,
            'lng': longitudeController,
            'lat': latitudeController,
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print('Registration successfully');
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => AddNew())));
      } else {
        Fluttertoast.showToast(
            msg: "Something went wrong!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  late double height, width;
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    String? selectedValue;
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text('Farmer Registration'),
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: ScreenUtil().screenWidth,
                decoration: const BoxDecoration(
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
                        const SizedBox(
                          height: 35,
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
                                    labelText: 'ID Number',
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
                                    labelText: 'Ward Number',
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
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  //controller: _emailController,
                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ), */
                                    labelText: 'Surname',
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
                                    labelText: 'Name of Locality',
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
                                    labelText: 'First Name',
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
                                    labelText: 'Telephone',
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
                                    labelText: 'Province',
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
                                    labelText: 'District',
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
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  //controller: _emailController,
                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ), */
                                    labelText: 'Latitude',
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
                                    labelText: 'Longitude',
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

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
