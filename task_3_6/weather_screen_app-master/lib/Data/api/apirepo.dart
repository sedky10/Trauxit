import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_screen/Data/Models/response.dart';

class WeatherApi {
  Future<WeatherResponse> getApiData(String city) async {
    final http.Response request = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast?q=$city&units=metric&lat=44.34&lon=10.99&appid=d08a489e5cca710d114fbcf4c04e46f2"));
    if (request.statusCode >= 200 && request.statusCode <= 299) {
      final Map<String, dynamic> jsonbody = jsonDecode(request.body);
      WeatherResponse weatherresponse = WeatherResponse.FromMap(jsonbody);
      return weatherresponse;
    } else {
      throw ('failure' + request.body);
    }
  }
}
