import 'package:flutter/material.dart';
import 'package:livetalk_login/firebase/login.dart';
import 'package:livetalk_login/verible.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform,
  );
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
      appBar: AppBar(backgroundColor: b_col,title: Text("Livetalk",style: TextStyle(color: g_col),)),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(
                child: Image.asset("images/live.png"),
              ),
              width: 150,
              height: 150,
            ),
          ],
        ),
        SizedBox(height: 200),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                signInWithGoogle();
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(220, 35)),
              icon: Image.asset(
                "images/1.jpg",
                width: 20,
                height: 20,
              ),
              label: Text(
                "Sign in with Google",
                style: TextStyle(color: go_col),
              ),
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
                    fixedSize: Size(220, 35)),
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, fixedSize: Size(220, 35)),
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
