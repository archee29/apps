class AfternoonFeederModel {
  final double tabungMakan;
  final int tabungMinum;
  final double wadahMakan;
  final int wadahMinum;
  final String timestamp;
  final bool pump;
  final bool servo;
  final bool sore;

  AfternoonFeederModel({
    required this.tabungMakan,
    required this.tabungMinum,
    required this.wadahMakan,
    required this.wadahMinum,
    required this.timestamp,
    required this.servo,
    required this.pump,
    required this.sore,
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
      "sore": sore,
    };
  }

  factory AfternoonFeederModel.fromJson(Map<String, dynamic> json) {
    return AfternoonFeederModel(
      tabungMakan: json["tabungMakan"],
      tabungMinum: json["tabungMinum"],
      wadahMakan: json["wadahMakan"],
      wadahMinum: json["wadahMinum"],
      timestamp: json["timestamp"],
      servo: json["servo"],
      pump: json["pump"],
      sore: json["sore"],
    );
  }
}
