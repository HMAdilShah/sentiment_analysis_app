import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:riverpod/riverpod.dart';

import 'package:sentiment_analysis_app/providers/sentiment_provider.dart';
import 'package:sentiment_analysis_app/widgets/sentiment_card.dart';

class SentimentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sentiment Analysis'),
      ),
      body: Consumer<SentimentProvider>(
        builder: (context, sentimentProvider, child) {
          return Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),
                child: TextField(
                  onChanged: (text) {
                    sentimentProvider.updateSentiment(text);
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter text to analyze sentiment',
                  ),
                ),
              ),
              SentimentCard(sentiment: sentimentProvider.sentiment, confidence: '',),
            ],
          );
        },
      ),
    );
  }
}
