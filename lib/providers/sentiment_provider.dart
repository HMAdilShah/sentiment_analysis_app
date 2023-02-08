import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:riverpod/riverpod.dart';

final sentimentProvider = Provider((_) => SentimentProvider());

class SentimentProvider extends ChangeNotifier {
  String _sentiment = '';
  String _confidence = '';

  String get sentiment => _sentiment;
  String get confidence => _confidence;

  void updateSentiment(String sentiment) {
    _sentiment = sentiment;
    _confidence = confidence;
    notifyListeners();
  }
}
