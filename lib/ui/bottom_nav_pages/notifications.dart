import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/appColors.dart';
import '../Drawer/navigation_drawer.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
          title: Text('Notifications',style: TextStyle(fontFamily: 'MontSerrat'),),
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
                child: Icon(color: Colors.white, size: 36, CupertinoIcons.bars),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: height * 0.05,
          ),
          GestureDetector(
            onTap: () {
              print('Taped');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 95,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    child: ListTile(
                      isThreeLine: false,
                      title: Text(
                        'New meeting at Muhabura sector',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.myGreen),
                      ),
                      subtitle: Text(
                          'This is a crop tile description is a crop tile description is a crop tile description lorem ipsum is a crop tile description ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      trailing: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/265/265674.png'),
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
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              print('Taped');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 95,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    child: ListTile(
                      isThreeLine: false,
                      title: Text(
                        'New meeting at Muhabura sector',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.myGreen),
                      ),
                      subtitle: Text(
                          'This is a crop tile description is a crop tile description is a crop tile description lorem ipsum is a crop tile description ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      trailing: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/265/265674.png'),
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
          SizedBox(height: 1,),
          GestureDetector(
            onTap: () {
              print('Taped');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 95,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    child: ListTile(
                      isThreeLine: false,
                      title: Text(
                        'New meeting at Muhabura sector',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.myGreen),
                      ),
                      subtitle: Text(
                          'This is a crop tile description is a crop tile description is a crop tile description lorem ipsum is a crop tile description ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      trailing: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/265/265674.png'),
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
          SizedBox(height: 1,),
          GestureDetector(
            onTap: () {
              print('Taped');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 95,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    child: ListTile(
                      isThreeLine: false,
                      title: Text(
                        'New meeting at Muhabura sector',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.myGreen),
                      ),
                      subtitle: Text(
                          'This is a crop tile description is a crop tile description is a crop tile description lorem ipsum is a crop tile description ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      trailing: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/265/265674.png'),
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
          SizedBox(height: 1,),
          GestureDetector(
            onTap: () {
              print('Taped');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 95,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    child: ListTile(
                      isThreeLine: false,
                      title: Text(
                        'New meeting at Muhabura sector',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.myGreen),
                      ),
                      subtitle: Text(
                          'This is a crop tile description is a crop tile description is a crop tile description lorem ipsum is a crop tile description ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      trailing: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/265/265674.png'),
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
          SizedBox(height: 1,),
          GestureDetector(
            onTap: () {
              print('Taped');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 95,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    child: ListTile(
                      isThreeLine: false,
                      title: Text(
                        'New meeting at Muhabura sector',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.myGreen),
                      ),
                      subtitle: Text(
                          'This is a crop tile description is a crop tile description is a crop tile description lorem ipsum is a crop tile description ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      trailing: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/265/265674.png'),
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
          GestureDetector(
            onTap: () {
              print('Taped');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 95,
              child: Stack(
                children: [
                  Container(
                    height: 90,
                    child: ListTile(
                      isThreeLine: false,
                      title: Text(
                        'New meeting at Muhabura sector',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.myGreen),
                      ),
                      subtitle: Text(
                          'This is a crop tile description is a crop tile description is a crop tile description lorem ipsum is a crop tile description ',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400)),
                      trailing: const CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/265/265674.png'),
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
        ]),
      ),
    );
  }

  Widget headerWidget() {
    const url = 'https://cdn-icons-png.flaticon.com/512/265/265674.png';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('person@email.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
