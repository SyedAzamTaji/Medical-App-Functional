import 'package:flutter/material.dart';
import 'package:quickmedical/login.dart';

class MySplash extends StatelessWidget {
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Container(
          height: 915,
          width: 412,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("homescreen.png"), fit: BoxFit.contain)),
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Login()));
        },
      ),
    );
  }
}
