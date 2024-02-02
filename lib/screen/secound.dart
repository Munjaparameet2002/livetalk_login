import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../verible.dart';

class secound extends StatefulWidget {
  const secound({super.key});

  @override
  State<secound> createState() => _secoundState();
}

class _secoundState extends State<secound> {
  get() async {
    var status = await Permission.camera.status;
    var status1 = await Permission.notification.status;
    var status2 = await Permission.microphone.status;
    var status3 = await Permission.nearbyWifiDevices.status;
    var status4 = await Permission.reminders.status;
    if (status.isDenied &&
        status1.isDenied &&
        status2.isDenied &&
        status3.isDenied &&
        status4.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.location,
        Permission.storage,
      ].request();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                a = value;
                setState(() {});
              },
              currentIndex: a,
              selectedItemColor: s_col,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Live talk'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history), label: 'history'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.message_sharp), label: 'messages')
              ]),
          appBar: AppBar(),
          body: TabBarView(
            children: [
              Container(
                  child: Container(
                      height: 150,
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(button)),
                              onPressed: () {},
                              child: Text("CONNECT WITH SOMEONE",style: TextStyle(color: g_col),))
                        ],
                      )),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/images (1).jpeg")))),
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/images (1).jpeg")))),
              Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/images (1).jpeg"))))
            ],
          ),
        ));
  }
}
