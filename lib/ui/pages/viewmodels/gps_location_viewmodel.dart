import 'package:equatable/equatable.dart';

class GpsLocationViewModel extends Equatable {
  final int? id;
  final String? code;
  final double? latitude;
  final double? longitude;
  final DateTime? timestamp;
  final double? altitude;
  final double? accuracy;

  GpsLocationViewModel({
    this.id,
    this.code,
    this.latitude,
    this.longitude,
    this.timestamp,
    this.altitude,
    this.accuracy});

  @override
  List<Object?> get props =>
      [id, code, latitude, longitude, timestamp, altitude, accuracy];
}