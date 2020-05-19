import 'package:cardsflutter/models/Quote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  Function delete;

  QuoteCard({this.quote,this.delete});

//  const QuoteCard({
//    Key key,
//  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 2, 16, 6),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.title,
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            ),
            SizedBox(height: 0.6),
            Text(
              quote.auther,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete'),
            )
          ],
        ),
      ),
    );
  }
}
