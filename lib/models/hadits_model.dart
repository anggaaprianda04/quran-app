class HaditsModel {
  String? name;
  String? id;
  List<DetailHadits>? hadiths;

  HaditsModel({
    required this.name,
    required this.id,
    required this.hadiths,
  });

  factory HaditsModel.fromJson(Map<String, dynamic> json) {
    return HaditsModel(
        name: json["name"] ?? "",
        id: json["id"] ?? "",
        hadiths: json["hadiths"] != null
            ? List.from(json["hadiths"])
                .map((e) => DetailHadits.fromJson(e))
                .toList()
            : []);
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "id": id,
      "hadiths": hadiths!.map((e) => hadiths),
    };
  }
}

class DetailHadits {
  int? number;
  String? arab;
  String? id;

  DetailHadits({
    this.number,
    this.arab,
    this.id,
  });

  factory DetailHadits.fromJson(Map<String, dynamic> json) {
    return DetailHadits(
      number: json["number"],
      arab: json["arab"],
      id: json["id"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "number": number,
      "arab": arab,
      "id": id,
    };
  }
}
