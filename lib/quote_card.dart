import 'package:flutter/material.dart';
import 'quote.dart';

//Class to create design for shadowed cards for quotes displayed
class QuoteCard extends StatelessWidget {
  //Final variable since stless & constructor to accept quotes to create card
  final Quote quote;
  //You can create variables that are functions in flutter
  final Function() delete;
  //Constructor has passed in parameter from main.dart
  const QuoteCard({required this.quote, required this.delete});

  //Build function for the design of each card
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 7.0),
          Text(
            quote.author,
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 7.0,
          ),
          TextButton.icon(
            onPressed: delete,
            label: const Text(
              "delete quote",
              style: TextStyle(fontSize: 12.0),
            ),
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
