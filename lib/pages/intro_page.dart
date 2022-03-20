// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motivateme/pages/login_page.dart';

class IntroPage extends StatelessWidget {
  double height = 40;
  double width = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Image.asset(
              'assets/quotesymbol.png',
              height: height,
              width: width,
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(fontSize: 50, color: Colors.black),
                ),
                children: [
                  TextSpan(text: 'Get\n'),
                  TextSpan(
                      text: 'Inspired',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Continue"),
                style: ElevatedButton.styleFrom(primary: Colors.black),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
