// ignore_for_file: prefer_const_constructors, empty_statements, dead_code, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuoteWidget extends StatelessWidget {
  var quote = "";
  var author = "";
  Function()? onShareClick;
  Function()? onLikeClick;
  Color bgColor;

  QuoteWidget(
      {required this.quote,
      required this.author,
      this.onShareClick,
      this.onLikeClick,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Spacer(
            flex: 2,
          ),
          Image.asset(
            'assets/quotesymbol.png',
            height: 30,
            width: 30,
            color: Colors.white,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            quote,
            style: GoogleFonts.lato(
              textStyle: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            author,
            style: GoogleFonts.lato(
              textStyle:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: onLikeClick,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                  onTap: onShareClick,
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.white),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
