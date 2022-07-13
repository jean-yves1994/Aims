import 'dart:convert';
import 'dart:io';
import 'package:aims/API/api.dart';
import 'package:aims/Models/districtModel.dart';
import 'package:aims/Models/provinceModel.dart';
import 'package:aims/Models/wardModel.dart';
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

  List provinceList = [];
  String? _selectedProvince;
  String? _selectedDistrict;
  String? _selectedWard;
  Future getProvince() async {
    HttpOverrides.global = MyHttpOverrides();

    Response response = await CallApi().getData('province');
    Map<String, dynamic> data = json.decode(response.body.toString());
    Province prov = Province.fromJson(data);
    for (var p in prov.provinceData) {
      setState(() {
        provinceList.add(p.id);
      });
    }
    print(provinceList);
  }

  //District method
  List districtList = [];
  Future getDistrict() async {
    HttpOverrides.global = MyHttpOverrides();

    Response response = await CallApi().getData('district');
    Map<String, dynamic> data = json.decode(response.body.toString());
    District dist = District.fromJson(data);
    for (var d in dist.districtData) {
      setState(() {
        districtList.add(d.name);
      });
    }
    print(districtList);
  }

  List wardList = [];

  Future getWard() async {
    HttpOverrides.global = MyHttpOverrides();

    Response response = await CallApi().getData('ward');
    Map<String, dynamic> data = json.decode(response.body.toString());
    Ward ward = Ward.fromJson(data);
    for (var w in ward.wardData) {
      setState(() {
        wardList.add(w.name);
      });
    }
    print(wardList);
  }

  late double height, width;

  @override
  void initState() {
    getProvince();
    getDistrict();
    getWard();
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
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: const Text('Farmer Registration'),
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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Farmer ID',
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const  [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'First Name',
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Last Name',
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Telephone',
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name of Locality',
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        isExpanded: true,
                        value: _selectedProvince,
                        iconSize: 30,
                        icon: (null),
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                        hint: const Text('Select Province'),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedProvince = newValue as String?;
                          });
                        },
                        items: provinceList.map((item) {
                          return DropdownMenuItem(
                            value: item.toString(),
                            child: Text(item.toString()),
                          );
                        }).toList()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        isExpanded: true,
                        value: _selectedDistrict,
                        iconSize: 30,
                        icon: (null),
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                        hint: const Text('Select District'),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedDistrict = newValue as String?;
                          });
                        },
                        items: districtList.map((item) {
                          return DropdownMenuItem(
                            value: item.toString(),
                            child: Text(item.toString()),
                          );
                        }).toList()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        isExpanded: true,
                        value: _selectedWard,
                        iconSize: 30,
                        icon: (null),
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                        hint: const Text('Select Ward'),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedWard = newValue as String?;
                          });
                        },
                        items: wardList.map((item) {
                          return DropdownMenuItem(
                            value: item.toString(),
                            child: Text(item.toString()),
                          );
                        }).toList()),
                  ),
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
                          labelText: 'Longitude',
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
                          labelText: 'Latitude',
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
                  () {
                    farmerRegister();
                  },
                ),
              ),
            ],
          ),
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
