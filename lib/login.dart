import 'package:flutter/material.dart';
import 'package:quickmedical/Home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 915,
        width: 412,
        color: Color(0xffFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              height: 74,
              width: 74,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("logo.png"))),
            ),
            Text(
              "Quick Medical",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Please Enter your Mobile Number \nto Login/Sign Up"),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 299,
              height: 44,
              child: TextField(
                  decoration: InputDecoration(
                      hintText: "+91 9265614292",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff4157FF)),
                child: Container(
                  width: 260,
                  height: 44,
                  child: Row(
                    children: [
                      SizedBox(width: 100),
                      Text(
                        "Continue",
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
