class Rain {
  late double h3;

  Rain({required this.h3});

  Rain.FromMap(Map<String, dynamic> map) {
    this.h3 = map["3h"];
  }

  Map<String, dynamic> tomap() {
    return {
      "3h": this.h3,
    };
  }
}
