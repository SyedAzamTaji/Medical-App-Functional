import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final Color bcolor;
  final Color ccolor;
  final Color tcolor;
  final Color stcolor;
  final String stext;
  final String text;

  const ProductContainer(
      {super.key,
      required this.bcolor,
      required this.ccolor,
      required this.stcolor,
      required this.stext,
      required this.tcolor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 20),
      height: 68,
      width: 79,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: ccolor.withOpacity(0.05),
          border: Border.all(width: 1, color: bcolor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: tcolor),
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              stext,
              style: TextStyle(fontSize: 12, color: stcolor),
            ),
          ),
        ],
      ),
    );
  }
}
