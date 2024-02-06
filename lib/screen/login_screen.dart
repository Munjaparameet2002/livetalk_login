import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:livetalk_login/screen/secound.dart';
import 'package:livetalk_login/verible.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Login_screen"),
          CupertinoTextField(
            controller: name,
          ),
          CupertinoTextField(
            controller: contact,
          ),
          CupertinoTextField(
            controller: email,
          ),
          CupertinoTextField(
            controller: password,
          ),
          CupertinoButton(
            child: const Text("Submit"),
            onPressed: () async {
              var url = Uri.parse(
                  'https://house-broken-battle.000webhostapp.com/live_talk.php');
              var response = await http.post(url, body: {
                'name': name.text,
                'contact': contact.text,
                'email': email.text,
                'pin': password.text
              });
              print('Response status: ${response.statusCode}');
              print('Response body: ${response.body}');
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Example(),));
            },
          )
        ],
      ),
    );
  }
}
