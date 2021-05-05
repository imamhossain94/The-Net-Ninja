import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text:'i am lal', author:'lal vai'),
    Quote(text:'i am lals father', author:'lal bon'),
    Quote(text:'i am lals mother', author:'lal banu'),
    Quote(text:'i am the owner of lal factory', author:'lal dada'),
  ];

  List<Quote> delQuotes = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Awesome Quotes'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((e) =>
            QuoteCard(
              quote: e,
              delete: (){
                setState(() {
                  quotes.remove(e);
                  delQuotes.add(e);
                });
              },
            ),
        ).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            quotes.add(delQuotes[delQuotes.length-1]);
            delQuotes.remove(delQuotes[delQuotes.length-1]);
          });

        },
        backgroundColor: Colors.redAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}


