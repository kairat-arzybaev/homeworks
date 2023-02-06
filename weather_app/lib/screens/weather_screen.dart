import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'package:weather_app/providers/city_weather_provider.dart';

class WeatherScreen extends StatelessWidget {
  WeatherScreen({super.key});
  String cityName = 'Bishkek';
  String apiKey = '7c016019b9c94f9c8b4b8fa4ab1c8370';
  String units = 'metric';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var cityData = context.watch<CityWeatherProvider>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF08244F),
                  Color(0xFF134CB5),
                  Color(0xFF0B42AB)
                ]),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                TextField(
                  textCapitalization: TextCapitalization.words,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: 'Weather in your city',
                    hintStyle:
                        const TextStyle(color: Colors.white54, fontSize: 18),
                    filled: true,
                    fillColor: const Color(0xFF08244F).withOpacity(0.9),
                    prefixIcon: IconButton(
                      onPressed: () {
                        cityData.getCityWeather(
                            cityName: cityName, apiKey: apiKey, units: units);
                      },
                      icon: const Icon(Icons.search),
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                    height: 200,
                    width: 280,
                    child: Image.asset('assets/sun_cloud.png')),
                Column(
                  children: [
                    Text(
                      '${cityData.cityWeather?.main.temp}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 64),
                    ),
                    Text(
                      '${cityData.cityWeather?.weather[0].description}',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      'Max: ${cityData.cityWeather?.main.tempMax}   Min: ${cityData.cityWeather?.main.tempMin}',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFF001026).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            color: const Color(0xFF000000).withOpacity(0.25))
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/rain_icon.png',
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${cityData.cityWeather?.main.humidity}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/humidity_icon.png',
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${cityData.cityWeather?.main.grndLevel}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      const Spacer(),
                      Image.asset(
                        'assets/wind_icon.png',
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${cityData.cityWeather?.wind.speed}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xFF001026).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 20,
                            color: const Color(0xFF000000).withOpacity(0.25))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Today',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          Text(DateFormat.MMMd().format(DateTime.now()),
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18))
                        ],
                      ),
                      Text('${cityData.cityWeather?.main.temp}',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18)),
                      SizedBox(
                        height: 45,
                        width: 50,
                        child: Image.asset(
                          'assets/sun_cloud.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(DateFormat.Hm().format(DateTime.now()),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 18))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
