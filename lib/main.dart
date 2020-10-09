// import 'dart:html';
import 'dart:ui';
import 'quotes.dart';

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
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself, everyone else is already taken',
        author: 'sachintha'),
    Quote(text: 'So many books, so little time', author: 'kanchana'),
    Quote(
        text: 'A room without books is like a body without a soul',
        author: 'Kmac')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/a.jpg'),
              radius: 17.0,
            ),
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }

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
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
