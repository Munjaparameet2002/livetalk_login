import 'package:flutter/material.dart';
import 'package:livetalk_login/firebase/login.dart';
import 'package:livetalk_login/screen/first.dart';
import 'package:livetalk_login/screen/login_screen.dart';
import 'package:livetalk_login/screen/secound.dart';
import 'package:livetalk_login/verible.dart';
import 'package:http/http.dart' as http;
import 'package:livetalk_login/video_call_page.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: b_col,
          title: Text(
            "Livetalk",
            style: TextStyle(color: g_col),
          )),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Center(
                child: Image.asset("images/live.png"),
              ),
            ),
          ],
        ),
        const SizedBox(height: 150),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                signInWithGoogle().then((value) {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const First();
                    },
                  ));
                });
              },
              style: ElevatedButton.styleFrom(fixedSize: const Size(220, 35)),
              icon: Image.asset(
                "images/1.jpg",
                width: 20,
                height: 20,
              ),
              label: Text("Sign in with Google",
                  style: TextStyle(
                    color: b_col,
                  )),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                    fixedSize: const Size(220, 35)),
                icon: Icon(Icons.facebook, color: g_col),
                label: Text(
                  "Sign in with Facebook",
                  style: TextStyle(color: g_col),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return Video_call();
                  },
                ));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  fixedSize: const Size(220, 35)),
              icon: Icon(Icons.account_circle_rounded, color: g_col),
              label:
                  Text(" Continue as a guest", style: TextStyle(color: g_col)),
            )
          ],
        )
      ]),
    );
  }
}
