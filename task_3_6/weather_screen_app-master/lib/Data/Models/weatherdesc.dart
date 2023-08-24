class WeatherDescription {
  // "id": 500,
  // "main": "Rain",
  // "description": "light rain",
  // "icon": "10d"
  late int id;
  late String main;
  late String description;
  late String icon;

  WeatherDescription({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  WeatherDescription.FromMap(Map<String, dynamic> map) {
    this.id = int.parse(map["id"].toString());
    this.main = map["main"];
    this.description = map["description"];
    this.icon = map["icon"];
  }

  Map<String, dynamic> tomap() {
    Map<String, dynamic> map = {
      "id": this.id,
      "main": this.main,
      "description": this.description,
      "icon": this.icon,
    };
    return map;
  }
}
