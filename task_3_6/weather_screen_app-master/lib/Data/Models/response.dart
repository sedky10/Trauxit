import 'package:weather_screen/Data/Models/city.dart';
import 'package:weather_screen/Data/Models/single_forcast.dart';

class WeatherResponse {
  late String cod;
  late int messege;
  late int cnt;
  late List<SingleForCast> list;
  late City city;

  WeatherResponse({
    required this.cod,
    required this.messege,
    required this.cnt,
    required this.list,
    required this.city,
  });

  WeatherResponse.FromMap(Map<String, dynamic> map) {
    this.cod = map["cod"];

    this.messege = int.parse(map["message"].toString());

    this.cnt = int.parse(map["cnt"].toString());

    this.list = [];
    (map["list"]).forEach(
      (element) => this.list.add(SingleForCast.FromMap(element)),
    );

    this.city = City.frommap(map["city"]);
  }

  Map<String, dynamic> tomap() {
    List<Map> list2 = [];
    this.list.forEach((element) {
      list2.add(element.tomap());
    });
    Map<String, dynamic> map = {
      "cod": this.cod,
      "message": this.messege,
      "cnt": this.cnt,
      "list": list2,
      "city": this.city.tomap(),
    };
    return map;
  }
}
