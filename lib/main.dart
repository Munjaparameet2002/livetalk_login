import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text("Livetalk")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Center(child: Image.asset("images/live.png"),),
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
                onPressed: () {},
                style: ElevatedButton.styleFrom(fixedSize: Size(175, 35)),
                icon: Image.asset("images/1.jpg",width: 20,height: 20,),label: Text("Sign in with Google"),
                )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade900,
                fixedSize: Size(175,35)),
                icon: Icon(Icons.facebook),
                label: Text("Sign in with Facebook"))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber, fixedSize: Size(175, 35)),
                icon: Icon(Icons.account_circle_rounded),
                label: Text(" Continue as a guest"),
                )
          ],
        )
      ]),
    );
  }
}
