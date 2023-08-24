import 'package:weather_screen/Data/Models/coord.dart';
import 'coord.dart';

class City {
  late int id;
  late int population;
  late int timezone;
  late int sunrise;
  late int sunset;
  late String country;
  late String name;
  late Coordinats coord;

  City({
    required this.id,
    required this.population,
    required this.timezone,
    required this.sunrise,
    required this.sunset,
    required this.country,
    required this.name,
    required this.coord,
  });

  City.frommap(Map<String, dynamic> map) {
    this.id = map["id"];
    this.population = map["population"];
    this.timezone = map["timezone"];
    this.sunrise = map["sunrise"];
    this.sunset = map["sunset"];
    this.country = map["country"];
    this.name = map["name"];
    this.coord = Coordinats.fromMap(map["coord"]);
  }

  Map<String, dynamic> tomap() {
    Map<String, dynamic> map = {
      "id": this.id,
      "population": this.population,
      "timezone": this.timezone,
      "sunrise": this.sunrise,
      "sunset": this.sunset,
      "country": this.country,
      "name": this.name,
      "coord": this.coord,
    };
    return map;
  }
}
