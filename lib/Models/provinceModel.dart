class Province {
  String? message;
  int? status;
  List<ProvinceData> provinceData;

  Province({
    this.message,
    this.status,
    required this.provinceData,
  });
  factory Province.fromJson(Map<String, dynamic> json) {
    var list = json['province_data'] as List;
    List<ProvinceData> provinceList =
        list.map((province) => ProvinceData.fromJson(province)).toList();
    return Province(
        message: json['message'],
        status: json['status'],
        provinceData: provinceList);
  }
}

class ProvinceData {
  final int? id;
  final String? name;

  ProvinceData({this.id, this.name});

  factory ProvinceData.fromJson(Map<String, dynamic> json) {
    return ProvinceData(id: json['id'], name: json['name']);
  }
}
