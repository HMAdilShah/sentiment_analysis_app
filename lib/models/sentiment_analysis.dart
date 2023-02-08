import 'dart:convert';
import 'package:http/http.dart' as http;

class SentimentAnalysis {
  static Future<double> analyzeSentiment(String text) async {
    final response = await http.post(
      "API_END_POINT",
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "text": text,
      }),
    );

    if (response.statusCode == 200) {
      final sentiment = jsonDecode(response.body)["sentiment"];
      return sentiment;
    } else {
      throw Exception("Failed to analyze sentiment");
    }
  }
}
