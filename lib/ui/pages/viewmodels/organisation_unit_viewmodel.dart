import 'package:equatable/equatable.dart';
import 'viewmodels.dart';

class OrganisationUnitViewModel extends Equatable {
  final int? id;
  final String? uid;
  final String? code;
  final String? name;
  final String? path;
  final int? level;
  // TODO make String or delete
  final OrganisationUnitViewModel? parent;
  // TODO make String or delete
  final GpsLocationViewModel? gpsLocationViewModel;
  // TODO make String or delete
  final ChvViewModel? assignedChv;

  OrganisationUnitViewModel(
      {this.id,
      this.uid,
      this.code,
      this.name,
      this.path,
      this.level,
      this.parent,
      this.gpsLocationViewModel,
      this.assignedChv});

  @override
  List<Object?> get props => [
        id,
        uid,
        code,
        name,
        path,
        level,
        parent,
        gpsLocationViewModel,
        assignedChv
      ];
}
