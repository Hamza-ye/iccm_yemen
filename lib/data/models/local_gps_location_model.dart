import 'package:iccm_yemen/data/models/models.dart';

import '../../../domain/entities/entities.dart';

class LocalGpsLocationModel {
  int? id;
  String? code;
  double? latitude;
  double? longitude;
  DateTime? timestamp;
  double? altitude;
  double? accuracy;

  LocalGpsLocationModel(
      {this.id,
      this.code,
      this.latitude,
      this.longitude,
      this.timestamp,
      this.altitude,
      this.accuracy});

  LocalGpsLocationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    timestamp = DateTime.parse(json['timestamp'].toString());
    altitude = json['altitude'];
    accuracy = json['accuracy'];
  }

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

  factory LocalGpsLocationModel.fromEntity(GpsLocationEntity? entity) =>
      LocalGpsLocationModel(
          id: entity?.id,
          code: entity?.code,
          latitude: entity?.latitude,
          longitude: entity?.longitude,
          timestamp: entity?.timestamp,
          altitude: entity?.altitude,
          accuracy: entity?.accuracy);

  GpsLocationEntity toEntity() => GpsLocationEntity(
      id: id,
      code: code,
      latitude: latitude,
      longitude: longitude,
      timestamp: timestamp,
      altitude: altitude,
      accuracy: accuracy);
}
