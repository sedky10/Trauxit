class Coordinats {
  late double lat, lon;

  Coordinats({
    required this.lat,
    required this.lon,
  });

  Coordinats.fromMap(Map<String, dynamic> map) {
    this.lon = map["lon"];
    this.lat = map["lat"];
  }

  Map<String, dynamic> tomap() {
    Map<String, dynamic> map = {
      "lat": this.lat,
      "lon": this.lon,
    };
    return map;
  }
}
