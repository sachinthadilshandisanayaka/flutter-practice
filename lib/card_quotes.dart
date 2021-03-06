// import 'dart:html';
import 'dart:ui';
import 'quotes.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard(
      {this.quote,
      this.delete}); // final key word is neccessary, because of stateLessWidget's values can't change time to time.

  @override
  Widget build(BuildContext context) {
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
                fontFamily: 'Dosis',
                fontWeight: FontWeight.bold,
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
            ),
            SizedBox(
              height: 10.0,
            ),
            FlatButton.icon(
              onPressed: delete,
              label: Text('delete quote'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
