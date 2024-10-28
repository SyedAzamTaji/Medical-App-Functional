import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 90,
            height: 25,
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "My Profile",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff0E51FF), width: 2),
                        shape: BoxShape.circle),
                    margin: EdgeInsets.only(left: 22, top: 30),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("profileimage.jpg"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Syed Azam Taji",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff091C3F).withOpacity(0.45)),
                        ),
                        Text(
                          "Welcome to Quick Medical Store",
                          style: TextStyle(
                              color: Color(0xff091C3F).withOpacity(0.45)),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [],
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: Icon(
                  Icons.person_2_rounded,
                ),
                title: Text("Edit Profile",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff091C3F).withOpacity(0.75))),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.contact_page_sharp,
                ),
                title: Text("My orders",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff091C3F).withOpacity(0.75))),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
              ),
              ListTile(
                leading: Icon(Icons.attach_money_rounded),
                title: Text("Billing",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff091C3F).withOpacity(0.75))),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline,
                ),
                title: Text("Faq",
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff091C3F).withOpacity(0.75))),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
