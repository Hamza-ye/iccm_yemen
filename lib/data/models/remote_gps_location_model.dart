import '../../domain/entities/entities.dart';

class RemoteGpsLocationModel {
  int? id;
  String? code;
  double? latitude;
  double? longitude;
  DateTime? timestamp;
  double? altitude;
  double? accuracy;

  RemoteGpsLocationModel(
      {this.id,
      this.code,
      this.latitude,
      this.longitude,
      this.timestamp,
      this.altitude,
      this.accuracy});

  RemoteGpsLocationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    timestamp = DateTime.parse(json['timestamp'].toString());
    altitude = json['altitude'];
    accuracy = json['accuracy'];
  }

  // TODO No need for toJson function in a remote model
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['code'] = code;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['timestamp'] = timestamp;
    data['altitude'] = altitude;
    data['accuracy'] = accuracy;
    return data;
  }

  GpsLocationEntity toEntity() => GpsLocationEntity(
      id: id,
      code: code,
      latitude: latitude,
      longitude: longitude,
      timestamp: timestamp,
      altitude: altitude,
      accuracy: accuracy);
}
