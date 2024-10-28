import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:quickmedical/Home.dart';

import 'package:quickmedical/cart.dart';
import 'package:quickmedical/cart_module.dart';

import 'package:quickmedical/product_container.dart';

class ProductDetail extends StatefulWidget {
  final String title;
  final num price;
  final AssetImage image;

  ProductDetail({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 30,
                        )),
                  ),
                  SizedBox(width: 200),
                  Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(top: 20, right: 5),
                      child: Icon(
                        Icons.notifications,
                        size: 30,
                      )),
                  SizedBox(width: 35),
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(top: 20, right: 20),
                    child: Icon(
                      Icons.shopping_bag_sharp,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Text(
                    "${widget.title}",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff090F47)),
                  )),
              SizedBox(height: 5),
              Container(
                  margin: EdgeInsets.only(right: 100),
                  child: Text(
                    "Etiam mollis metus non purus",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff090F47).withOpacity(0.45)),
                  )),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: 327,
                height: 178,
                decoration:
                    BoxDecoration(image: DecorationImage(image: widget.image)),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 25),
                    child: Text(
                      "Rs.99",
                      style: TextStyle(
                          fontSize: 20,
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xff090F47).withOpacity(0.50)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 25),
                      child: Text(
                        "Rs.${widget.price}",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff090F47),
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 250),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xff006AFF),
                    ),
                    Text(
                      "Add to cart",
                      style: TextStyle(fontSize: 14, color: Color(0xff006AFF)),
                    ),
                  ],
                ),
              ),
              Stack(children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, bottom: 20),
                      child: Text("Etiam mollis ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff090F47).withOpacity(0.70))),
                    ),
                  ],
                ),
              ]),
              Container(
                margin: EdgeInsets.only(left: 5),
                width: 327,
                height: 2,
                color: Color(000000).withOpacity(0.10),
              ),
              Container(
                margin: EdgeInsets.only(right: 220, top: 20),
                child: Text(
                  "Package size",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff090F47)),
                ),
              ),
              Row(
                children: [
                  ProductContainer(
                      bcolor: Color(0xffFFA41B),
                      ccolor: Color(0xffFFA41B),
                      stcolor: Color(0xffFFA41B),
                      stext: "500 pellets",
                      tcolor: Color(0xffFFA41B),
                      text: "Rs.800"),
                  ProductContainer(
                      bcolor: Color(0xffFFFFFF),
                      ccolor: Color.fromARGB(237, 161, 159, 159),
                      stcolor: Color(0xff090F47).withOpacity(0.75),
                      stext: "110 pellets",
                      tcolor: Color(0xff090F47),
                      text: "Rs.166"),
                  ProductContainer(
                      bcolor: Color(0xffFFFFFF),
                      ccolor: Color.fromARGB(237, 161, 159, 159),
                      stcolor: Color(0xff090F47).withOpacity(0.75),
                      stext: "300 pellets",
                      tcolor: Color(0xff090F47),
                      text: "Rs.252"),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 200, top: 20),
                child: Text(
                  "Product Details",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff090F47)),
                ),
              ),
              Container(
                width: 320,
                height: 128,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet,accumsan nisi sit.",
                  style: TextStyle(
                      fontSize: 14, color: Color(0xff090F47).withOpacity(0.45)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 220, top: 10),
                child: Text(
                  "Ingredients",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff090F47)),
                ),
              ),
              Container(
                width: 320,
                height: 128,
                margin: EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio.Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                  style: TextStyle(
                      fontSize: 14, color: Color(0xff090F47).withOpacity(0.45)),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 10),
                    child: Text(
                      "Expiry Date",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff090F47)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 10),
                    child: Text(
                      "25/12/2023",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff090F47).withOpacity(0.45)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30, top: 10),
                    child: Text(
                      "Brand Name",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff090F47)),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 10),
                    child: Text(
                      "Something",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff090F47).withOpacity(0.45)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 101,
                width: 332,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("rating_section.png"))),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, top: 40),
                      child: Icon(
                        Icons.star,
                        color: Color(0xffFFC000),
                      )),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Text(
                            "4.2",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff090F47).withOpacity(0.45)),
                          )),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Row(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Text(
                            "05-oct-2020",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xff090F47).withOpacity(0.45)),
                          )),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(right: 230),
                child: Text(
                  "Erric Hoffman",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff090F47)),
                ),
              ),
              Container(
                width: 320,
                height: 57,
                child: Text(
                  "Interdum et malesuada fames ac ante ipsum primis in faucibus.Morbi ut nisi odio.Nulla facilisi.Nunc risus massa,gravida id egestas.",
                  style: TextStyle(
                      fontSize: 14, color: Color(0xff090F47).withOpacity(0.45)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        info.add(CartData(
                          count: count,
                          title: widget.title,
                          subtitle: "Etiam mollis",
                          price: widget.price,
                          image: widget.image,
                        ));
                      });
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff4157FF)),
                    child: Container(
                      width: 260,
                      height: 44,
                      child: Row(
                        children: [
                          SizedBox(width: 90),
                          Text(
                            "GO TO CART",
                            style: TextStyle(
                                color: Color(0xffFFFFFF), fontSize: 16),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
