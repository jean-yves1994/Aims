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
        drawer: NavigationDrawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            title: Text(
              'Notifications',
              style: TextStyle(fontFamily: 'MontSerrat'),
            ),
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
                  child:
                      Icon(color: Colors.white, size: 36, CupertinoIcons.bars),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: AppColors.myGreen.withOpacity(0.2),
                  title: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'New meeting at Muhabura sector',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColors.myGreen),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                        'This  a crop tile description is a crop tile description is a crop tile description lorem ipsum is a crop tile description ',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400)),
                  ),
                  isThreeLine: false,
                  trailing: const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/265/265674.png'),
                  ),
                ),
              ),
            ],
          ),
        ));
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
