import 'package:weather_screen/Data/Models/clouds.dart';
import 'package:weather_screen/Data/Models/mainweather.dart';

// import 'package:weather_screen/Data/Models/rain.dart';
import 'package:weather_screen/Data/Models/sys.dart';
import 'package:weather_screen/Data/Models/weatherdesc.dart';
import 'package:weather_screen/Data/Models/wind.dart';

class SingleForCast {
  late int dt;
  late MainWeather main;
  late List<WeatherDescription> weather;
  late Clouds clouds;
  late Wind wind;
  late int visibilty;
  late double pop;

  // late Rain rain;
  late Sys sys;
  late String dt_text;

  SingleForCast({
    required this.dt,
    required this.main,
    required this.weather,
    required this.clouds,
    required this.wind,
    required this.visibilty,
    required this.pop,
    // required this.rain,
    required this.sys,
    required this.dt_text,
  });

  SingleForCast.FromMap(Map<String, dynamic> map) {
    this.dt = int.parse(map["dt"].toString());
    this.main = MainWeather.FromMap(map["main"]);
    this.weather = [];
    (map["weather"]).forEach((element) {
      this.weather.add(WeatherDescription.FromMap(element));
    });

    this.clouds = Clouds.FromMap(map["clouds"]);

    this.wind = Wind.FromMap(map["wind"]);
    this.visibilty = int.parse(map["visibility"].toString());
    this.pop = double.parse(map["pop"].toString());
    // this.rain = Rain.FromMap(map["rain"]);

    this.sys = Sys.FromMap(map["sys"]);

    this.dt_text = map["dt_txt"];
  }

  Map<String, dynamic> tomap() {
    List<Map<String, dynamic>> list2 = [];
    this.weather.forEach((element) {
      list2.add(element.tomap());
    });
    Map<String, dynamic> map = {
      "dt": this.dt,
      "main": this.main.tomap(),
      "weather": list2,
      "clouds": this.clouds.tomap(),
      "wind": this.wind.tomap(),
      "visibility": this.visibilty,
      "pop": this.pop,
      // "rain": this.rain.tomap(),
      "sys": this.sys.tomap(),
      "dt_txt": this.dt_text,
    };
    return map;
  }
}
