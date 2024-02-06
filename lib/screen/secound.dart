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
      appBar: AppBar(title: Text("Livetalk",style: TextStyle(color: Colors.black)),backgroundColor: Colors.grey,actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.share_outlined,color: Colors.black)),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.account_circle,color: Colors.black),
        ),
        PopupMenuButton(color: Colors.black,
          itemBuilder: (context) {
            return List.empty();
          },
        )
      ]),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/images (1).jpeg")))),

    //  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    //   bottomSheet: Row(children: [
    //     IconButton(onPressed: () {
    //
    //     }, icon: Icon(Icons.search,color: Colors.black,)),
    //     SizedBox(width: 100,),
    //     IconButton(onPressed: () {
    //
    //     }, icon: Icon(Icons.history,color: Colors.black)),
    //     SizedBox(width: 100,),
    //     IconButton(onPressed: () {
    //
    //     }, icon: Icon(Icons.message,color: Colors.black,))
    //   ],),
      

    );
  }
}
