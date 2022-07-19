import 'package:equatable/equatable.dart';

import 'viewmodels.dart';

class ChvViewModel extends Equatable {
  final int? id;
  final String? uid;
  final String? code;
  final String? name;
  final bool? withdrawn;
  final String? dateJoined;
  final String? dateWithdrawn;
  final String? description;
  final PersonViewModel? person;
  // TODO make String or delete
  final OrganisationUnitViewModel? district;
  // TODO make String or delete
  final OrganisationUnitViewModel? homeSubvillage;
  // TODO make String or delete
  final OrganisationUnitViewModel? managingHf;

  ChvViewModel(
      {this.id,
      this.uid,
      this.code,
      this.name,
      this.withdrawn,
      this.dateJoined,
      this.dateWithdrawn,
      this.description,
      this.person,
      this.district,
      this.homeSubvillage,
      this.managingHf});

  @override
  List<Object?> get props => [
        id,
        uid,
        code,
        name,
        withdrawn,
        dateJoined,
        dateWithdrawn,
        description,
        person,
        district,
        homeSubvillage,
        managingHf
      ];
}
