class District {
  String? message;
  int? status;
  List<DistrictData> districtData;

  District({
    this.message,
    this.status,
    required this.districtData,
  });
  factory District.fromJson(Map<String, dynamic> json) {
    var list = json['district_data'] as List;
    List<DistrictData> districtList =
        list.map((district) => DistrictData.fromJson(district)).toList();
    return District(
        message: json['message'],
        status: json['status'],
        districtData: districtList);
  }
}

class DistrictData {
  final int? id;
  final String? name;
  final int? province_id;

  DistrictData({this.province_id, this.id, this.name});

  factory DistrictData.fromJson(Map<String, dynamic> json) {
    return DistrictData(
        id: json['id'], name: json['name'], province_id: json['province_id']);
  }
}
