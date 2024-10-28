import 'package:flutter/material.dart';

class CartContainer extends StatefulWidget {
  final String title;
  final String subtitle;
  final num price;
  final AssetImage image;
  final void Function() onadd;
  final void Function() onsub;
  final void Function() oncut;
  final int count;
  const CartContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.image,
    required this.onadd,
    required this.onsub,
    required this.oncut,
    required this.count,
  });

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border:
              Border.all(width: 2, color: Color(0xff4157FF).withOpacity(0.5))),
      height: 90,
      width: 322,
      child: Row(
        children: [
          Container(
            height: 80,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                image:
                    DecorationImage(image: widget.image, fit: BoxFit.contain)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff090F47)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  widget.subtitle,
                  style: TextStyle(
                      fontSize: 16, color: Color(0xff090F47).withOpacity(0.45)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Rs. ${widget.price}",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff090F47)),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: GestureDetector(
                  onTap: widget.oncut,
                  child: Icon(
                    Icons.cancel_outlined,
                    color: Color(0xff000000).withOpacity(0.25),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 60),
                width: 95,
                height: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color(0xffDFE3FF),
                    border: Border.all(
                        width: 1, color: Colors.white.withOpacity(0.2))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffDFE3FF)),
                      child: GestureDetector(
                          onTap: widget.onsub, child: Icon(Icons.remove)),
                    ),
                    Container(
                      child: Text("${widget.count}"),
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffA0ABFF)),
                      child: GestureDetector(
                          onTap: widget.onadd, child: Icon(Icons.add)),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
