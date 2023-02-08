import 'package:flutter/material.dart';
import 'package:sentiment_analysis_app/providers/sentiment_provider.dart';
import 'package:sentiment_analysis_app/screens/sentiment_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SentimentProvider(),
      child: MaterialApp(
        title: 'Sentiment Analysis',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SentimentScreen(),
      ),
    );
  }
}
