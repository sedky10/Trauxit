class Wind {
  late double speed;
  late int deg;
  late double gust;

  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  Wind.FromMap(Map<String, dynamic> map) {
    this.speed = double.parse(map["speed"].toString());
    this.deg = int.parse(map["deg"].toString());
    this.gust = double.parse(map["gust"].toString());
  }

  Map<String, dynamic> tomap() {
    Map<String, dynamic> map = {
      "speed": this.speed,
      "deg": this.deg,
      "gust": this.gust,
    };
    return map;
  }
}
