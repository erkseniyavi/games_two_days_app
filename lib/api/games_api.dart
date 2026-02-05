import 'dart:convert';

import 'package:games_two_days/models/games_two_days_model.dart';
import 'package:games_two_days/utilites/constants.dart';
import 'package:http/http.dart' as http;

class GamesTwoDaysApi {
  Future<GamesTwoDays> fetchGamesTwoDays() async {
    try {
      final queryParams = {
        'APPID': Constants.GAMES_APP_ID,
        'from': '2026-02-06',
        'to': '2026-02-08',
      };

      final uri = Uri.https(
        Constants.GAMES_BASE_URL_DOMAIN,
        Constants.GAMES_PATH,
        queryParams,
      );

      print('🌐 Request URI: $uri');

      final response = await http.get(uri);
      print('🔁 Status Code: ${response.statusCode}');
      print('📦 Response Body: ${response.body}');

      if (response.statusCode == 200) {
        return GamesTwoDays.fromJson(json.decode(response.body));
      } else {
        throw Exception('Bad response: ${response.statusCode}');
      }
    } catch (e) {
      print('🔥 Exception in fetchGamesTwoDays: $e');
      rethrow;
    }
  }
}
