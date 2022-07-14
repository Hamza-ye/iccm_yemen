class GpsLocationModel {
  int? id;
  String? code;
  int? latitude;
  int? longitude;
  String? timestamp;
  int? altitude;
  int? accuracy;

  GpsLocationModel(
      {this.id,
        this.code,
        this.latitude,
        this.longitude,
        this.timestamp,
        this.altitude,
        this.accuracy});

  GpsLocationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    timestamp = json['timestamp'];
    altitude = json['altitude'];
    accuracy = json['accuracy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['timestamp'] = this.timestamp;
    data['altitude'] = this.altitude;
    data['accuracy'] = this.accuracy;
    return data;
  }
}
