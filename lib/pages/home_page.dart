// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, unused_local_variable, empty_statements, unnecessary_string_interpolations, curly_braces_in_flow_control_structures

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:motivateme/widgets/quote_widget.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var apiURL = 'https://type.fit/api/quotes';

  Future<List<dynamic>> getPost() async {
    final response = await http.get(Uri.parse('$apiURL'));
    return postfromJson(response.body);
  }

  List<dynamic> postfromJson(String str) {
    final jsonData = json.decode(str);
    return jsonData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
          future: getPost(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return ErrorWidget(snapshot);
              }
              return PageView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  var model = snapshot.data![index];
                  return QuoteWidget(
                    quote: model['text'],
                    author: model['author'],
                    bgColor: Colors.blue,
                  );
                },
              );
            } else
              return CircularProgressIndicator();
          }),
    );
  }
}
