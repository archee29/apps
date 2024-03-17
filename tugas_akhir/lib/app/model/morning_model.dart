class MorningFeederModel {
  final double tabungMakan;
  final int tabungMinum;
  final double wadahMakan;
  final int wadahMinum;
  final String timestamp;
  final bool pump;
  final bool servo;
  final bool pagi;

  MorningFeederModel({
    required this.tabungMakan,
    required this.tabungMinum,
    required this.wadahMakan,
    required this.wadahMinum,
    required this.timestamp,
    required this.servo,
    required this.pump,
    required this.pagi,
  });

  Map<String, dynamic> toJson() {
    return {
      "tabungMakan": tabungMakan,
      "tabungMinum": tabungMinum,
      "wadahMakan": wadahMakan,
      "wadahMinum": wadahMinum,
      "timestamp": timestamp,
      "servo": servo,
      "pump": pump,
      "pagi": pagi,
    };
  }

  factory MorningFeederModel.fromJson(Map<String, dynamic> json) {
    return MorningFeederModel(
      tabungMakan: json["tabungMakan"],
      tabungMinum: json["tabungMinum"],
      wadahMakan: json["wadahMakan"],
      wadahMinum: json["wadahMinum"],
      timestamp: json["timestamp"],
      servo: json["servo"],
      pump: json["pump"],
      pagi: json["pagi"],
    );
  }
}
