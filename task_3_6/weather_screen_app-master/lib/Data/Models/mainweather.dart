class MainWeather {
  /*
  "temp": 290.99,
"feels_like": 290.68,
"temp_min": 290.99,
"temp_max": 293.04,
"pressure": 1019,
"sea_level": 1019,
"grnd_level": 935,
"humidity": 71,
"temp_kf": -2.05
   */
  late double temp;
  late double feels_like;
  late double temp_min;
  late double temp_max;
  late int pressure;
  late int sea_level;
  late int grnd_level;
  late int humidity;
  late double temp_kf;

  MainWeather({
    required this.temp,
    required this.feels_like,
    required this.temp_min,
    required this.temp_max,
    required this.pressure,
    required this.sea_level,
    required this.grnd_level,
    required this.humidity,
    required this.temp_kf,
  });

  MainWeather.FromMap(Map<String, dynamic> map) {
    this.temp =       double.parse(map["temp"].toString());
    this.feels_like = double.parse(map["feels_like"].toString());
    this.temp_min =   double.parse(map["temp_min"].toString());
    this.temp_max =   double.parse(map["temp_max"].toString());
    this.pressure =   int.parse(map["pressure"].toString());
    this.sea_level =  int.parse(map["sea_level"].toString());
    this.grnd_level = int.parse(map["grnd_level"].toString());
    this.humidity =   int.parse(map["humidity"].toString());
    this.temp_kf =    double.parse(map["temp_kf"].toString());
  }

  Map<String, dynamic> tomap() {
    Map<String, dynamic> map = {
      "temp": this.temp,
      "feels_like": this.feels_like,
      "temp_min": this.temp_min,
      "temp_max": this.temp_max,
      "pressure": this.pressure,
      "sea_level": this.sea_level,
      "grnd_level": this.grnd_level,
      "humidity": this.humidity,
      "temp_kf": this.temp_kf,
    };
    return map;
  }
}
