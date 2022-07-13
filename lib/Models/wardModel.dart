class Ward {
  String? message;
  int? status;
  List<WardData> wardData;

  Ward({
    this.message,
    this.status,
    required this.wardData,
  });
  factory Ward.fromJson(Map<String, dynamic> json) {
    var list = json['ward_data'] as List;
    List<WardData> wardList =
        list.map((ward) => WardData.fromJson(ward)).toList();
    return Ward(
        message: json['message'], status: json['status'], wardData: wardList);
  }
}

class WardData {
  final int? id;
  final String? name;
  final int? district_id;

  WardData({this.district_id, this.id, this.name});

  factory WardData.fromJson(Map<String, dynamic> json) {
    return WardData(
        id: json['id'], name: json['name'], district_id: json['district_id']);
  }
}
