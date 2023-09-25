class DuaModel {
  final String dua;
  final String conversion;
  final String meaning;
  const DuaModel(
      {required this.dua, required this.conversion, required this.meaning});
  factory DuaModel.fromJson(Map<String, dynamic> json) => DuaModel(
        dua: json["dua"],
        conversion: json["conversion"],
        meaning: json["meaning"],
      );
  Map<String, dynamic> toJson() => {
        "dua": dua,
        "conversion": conversion,
        "meaning": meaning,
      };
}
