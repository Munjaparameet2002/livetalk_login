import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

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
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined)),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle),
        ),
       PopupMenuButton(itemBuilder: (context) {
         return List.empty();
       },)
      ]),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/images (1).jpeg")))),
    );
  }
}
