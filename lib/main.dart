import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'cards/QuoteCard.dart';
import 'models/Quote.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData( primarySwatch: Colors.green),
      home: MyApp()
      ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  List<Quote> quotes = [
    Quote(
        title: 'Be yourself every one else is already taken', auther: 'ahmed'),
    Quote(
        title: 'I have no thing to declare except my genious',
        auther: 'mohamed'),
    Quote(title: 'the truth is rarly pure and never simple', auther: 'ali')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
        backgroundColor: Colors.amber[100],
        centerTitle: true,
      ),
      backgroundColor: Colors.amber[200],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(2, 8, 2, 8),
        child: Column(
          children: quotes
              .map((quote) => QuoteCard(quote: quote,
          delete: (){
                setState(() {
                  quotes.remove(quote);
                });
          }))
              .toList(), //Text('${quote.title} - ${quote.auther}'
        ),
      ),
    );
  }
}


