import 'entities.dart';

class ChvEntity extends IdentifiableEntity {
  @override
  final int? id;

  @override
  final String? uid;

  @override
  final String? code;

  @override
  final String? name;

  final bool? withdrawn;
  final String? dateJoined;
  final String? dateWithdrawn;
  final String? description;
  final PersonEntity? person;
  final OrganisationUnitEntity? district;
  final OrganisationUnitEntity? homeSubvillage;
  final OrganisationUnitEntity? managingHf;

  const ChvEntity(
      {required this.id,
      required this.uid,
      required this.code,
      required this.name,
      required this.withdrawn,
      required this.dateJoined,
      required this.dateWithdrawn,
      required this.description,
      required this.person,
      required this.district,
      required this.homeSubvillage,
      required this.managingHf});

  @override
  List<Object?> get props => super.props
    ..addAll([
      description,
      withdrawn,
      dateJoined,
      dateWithdrawn,
      person,
      district,
      homeSubvillage,
      managingHf
    ]);
}
