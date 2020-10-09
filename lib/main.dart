import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  Quotes({Key key}) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<String> quotes = [
    'Be yourself, everyone else is already taken',
    'So many books, so little time',
    'A room without books is like a body without a soul'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(52, 73, 94, 1.0),
      appBar: AppBar(
        title: Text(
          'Quotes',
          style: TextStyle(
            letterSpacing: 2.0,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(33, 47, 60, 1.0),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // children: <Widget>[

          // ],
          children: quotes.map((quote) {
            return Text(
              quote,
              style: TextStyle(
                color: Colors.white,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
