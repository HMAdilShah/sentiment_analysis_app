import 'package:flutter/material.dart';

class SentimentCard extends StatelessWidget {
  final String sentiment;
  final String confidence;

  SentimentCard({
    required this.sentiment,
    required this.confidence,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            'Sentiment: $sentiment',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'Confidence: $confidence',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
