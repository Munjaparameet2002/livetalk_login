import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';


  var appID=739753314;
  var appSign="d7aced7e82f761cd5c69292fb79da3d7405989543820fa2b7edf64a59a71314e";
final String localUserID = math.Random().nextInt(10000).toString();

class Video_call extends StatefulWidget {
  const Video_call({super.key});

  @override
  State<Video_call> createState() => _Video_callState();
}

class _Video_callState extends State<Video_call> {
  TextEditingController callIDTextCtrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextFormField(
                  controller: callIDTextCtrl,
                  decoration:
                  const InputDecoration(labelText: "join a call by id"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return CallPage(callID: callIDTextCtrl.text);
                    }),
                  );
                },
                child: const Text("join"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class CallPage extends StatelessWidget {
  final String callID;

  const CallPage({
    Key? key,
    required this.callID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: appID,
        appSign: appSign /*input your AppSign*/,
        userID: localUserID,
        userName: "user_$localUserID",
        callID: callID,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()

      ),
    );
  }
}