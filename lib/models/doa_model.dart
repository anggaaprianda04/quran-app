class DoaModel {
  String? id;
  String? doa;
  String? ayat;
  String? latin;
  String? arti;

  DoaModel({
    required this.id,
    this.doa,
    this.ayat,
    this.latin,
    this.arti,
  });

  factory DoaModel.fromJson(Map<String, dynamic> json) {
    return DoaModel(
      id: json["id"] ?? "",
      doa: json["doa"] ?? "",
      ayat: json["ayat"] ?? "",
      latin: json["latin"] ?? "",
      arti: json["artinya"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id ?? "",
      "doa": doa ?? "",
      "ayat": ayat ?? "",
      "latin": latin ?? "",
      "artinya": arti ?? "",
    };
  }
}
