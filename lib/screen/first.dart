import 'package:flutter/material.dart';
import 'package:livetalk_login/verible.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/images (1).jpeg"))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Select your Gender",
                  style: TextStyle(color: g_col, fontSize: 35)),
            ),
            const SizedBox(
              height: 200,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Wrap(alignment: WrapAlignment.center,
                      children: [Image.asset("images/ic_select_male.png"),
                        Text("MALE",style: TextStyle(fontSize: 35,color: g_col),),
                      ]),
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Wrap(alignment: WrapAlignment.center,
                      children: [Image.asset("images/ic_select_female.png")
                      ,  Text("FEMALE",style: TextStyle(fontSize: 35,color: g_col),)
                      ]),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
