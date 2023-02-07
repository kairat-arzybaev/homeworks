import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/city_weather_model.dart';

class CityWeatherProvider extends ChangeNotifier {
  CityWeatherModel? cityWeather;

  void getCityWeather(
      {required String cityName, required String apiKey, String? units}) async {
    Dio dio = Dio();

    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?',
        queryParameters: {'q': cityName, 'appid': apiKey, 'units': units});

    if (response.statusCode == 200) {
      cityWeather = CityWeatherModel.fromJson(response.data);

      notifyListeners();
    } else {
      throw Exception('Data is not loaded');
    }
  }
}
