import 'package:equatable/equatable.dart';

class GpsLocationEntity extends Equatable {
  final int? id;
  final String? code;
  final double? latitude;
  final double? longitude;
  final DateTime? timestamp;
  final double? altitude;
  final double? accuracy;

  const GpsLocationEntity(
      {required this.id,
      required this.code,
      required this.latitude,
      required this.longitude,
      required this.timestamp,
      required this.altitude,
      required this.accuracy});

  @override
  List<Object?> get props => [
        id,
        code,
        latitude,
        longitude,
        timestamp,
        altitude,
        accuracy,
      ];
}
