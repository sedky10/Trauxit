class Sys {
  late String pod;

  Sys({required this.pod});

  Sys.FromMap(Map<String, dynamic> map) {
    this.pod = map["pod"];
  }

  Map<String, dynamic> tomap() => {"pod": this.pod};
}
