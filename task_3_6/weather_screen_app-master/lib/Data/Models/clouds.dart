class Clouds {
  late int all;

  Clouds({required this.all});

  Clouds.FromMap(Map<String, dynamic> map) {
    this.all = int.parse(map["all"].toString());
  }

  Map<String, dynamic> tomap() => {"all": this.all};
}
