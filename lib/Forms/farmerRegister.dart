import 'dart:convert';
import 'dart:io';
import 'package:aims/API/api.dart';
import 'package:aims/Models/provinceModel.dart';
import 'package:aims/const/appColors.dart';
import 'package:aims/ui/Drawer/navigation_drawer.dart';
import 'package:aims/ui/bottom_nav_pages/addNew.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'dart:async' show Future;

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

  void farmerRegister() async {
    HttpOverrides.global = MyHttpOverrides();
    try {
      var body = {
        'idno': idController.text,
        'wardno': wardController.text,
        'locality': localtyController.text,
        'name': firstNameController.text,
        'sname': lastNameController.text,
        'tel': telephoneController.text,
        'province': provinceController.text,
        'district': districtController.text,
        'lng': longitudeController.text,
        'lat': latitudeController.text,
      };
      var response = await CallApi().postData(body, 'add-farmer');
      if (response.statusCode == 200) {
        print('Farmer created');
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

  Future getProvince() async {
    HttpOverrides.global = MyHttpOverrides();

    Response response = await CallApi().getData('province');
    Map<String, dynamic> data = json.decode(response.body);
    Province prov = Province.fromJson(data);
    for (int i = 0; i < prov.provinceData.length; i++) {
      print(prov.provinceData[i].id);
    }

/*     print(
        '${prov.message} + ${prov.status} + ${prov.provinceData[0].id} + ${prov.provinceData[0].name}');
 */
  }

  late double height, width;
  String? selectedValue;

  @override
  void initState() {
    getProvince();
    super.initState();
  }

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
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 1.0, left: 6.0, right: 6),
                                child: DropDownTextField(
                                  clearOption: false,
                                  dropDownItemCount: 8,
                                  searchShowCursor: false,
                                  dropDownList: const [
                                    DropDownValueModel(
                                        name: 'name1', value: "value1"),
                                    DropDownValueModel(
                                      name: 'name2',
                                      value: "value2",
                                    ),
                                    DropDownValueModel(
                                        name: 'name3', value: "value3"),
                                    DropDownValueModel(
                                      name: 'name4',
                                      value: "value4",
                                    ),
                                    DropDownValueModel(
                                        name: 'name5', value: "value5"),
                                    DropDownValueModel(
                                        name: 'name6', value: "value6"),
                                    DropDownValueModel(
                                        name: 'name7', value: "value7"),
                                    DropDownValueModel(
                                        name: 'name8', value: "value8"),
                                  ],
                                  onChanged: (val) {},
                                ), /* TextField(
                                  //controller: _emailController,

                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ), */
                                    labelText: 'Ward',
                                    suffixIcon:
                                        const Icon(Icons.arrow_drop_down, size: 24),
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ), */
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
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 1.0, left: 6.0, right: 6),
                                child: Text(
                                    'text'), /* TextField(
                                  //controller: _emailController,

                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ), */
                                    labelText: 'Ward',
                                    suffixIcon:
                                        const Icon(Icons.arrow_drop_down, size: 24),
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ), */
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 1.0, left: 6.0, right: 6),
                                child: DropDownTextField(
                                  clearOption: false,
                                  dropDownItemCount: 8,
                                  searchShowCursor: false,
                                  dropDownList: const [
                                    DropDownValueModel(
                                        name: 'name1', value: "value1"),
                                    DropDownValueModel(
                                      name: 'name2',
                                      value: "value2",
                                    ),
                                    DropDownValueModel(
                                        name: 'name3', value: "value3"),
                                    DropDownValueModel(
                                      name: 'name4',
                                      value: "value4",
                                    ),
                                    DropDownValueModel(
                                        name: 'name5', value: "value5"),
                                    DropDownValueModel(
                                        name: 'name6', value: "value6"),
                                    DropDownValueModel(
                                        name: 'name7', value: "value7"),
                                    DropDownValueModel(
                                        name: 'name8', value: "value8"),
                                  ],
                                  onChanged: (val) {},
                                ), /* TextField(
                                  //controller: _emailController,

                                  decoration: InputDecoration(
                                    /* hintStyle: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color(0xFF414041),
                                    ), */
                                    labelText: 'Ward',
                                    suffixIcon:
                                        const Icon(Icons.arrow_drop_down, size: 24),
                                    labelStyle: TextStyle(
                                      fontSize: 15.sp,
                                      color: AppColors.myGreen,
                                    ),
                                  ),
                                ), */
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
                            farmerRegister();
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
