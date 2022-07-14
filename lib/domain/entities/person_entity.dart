import 'entities.dart';

class PersonEntity extends IdentifiableWithUuidEntity {
  @override
  final int? id;

  @override
  final String? uid;

  @override
  final String? code;

  @override
  final String? name;

  @override
  final String? uuid;

  final String? mobile;
  final UserEntity? userInfo;

  final List<OrganisationUnitEntity>? organisationUnits;
  final List<OrganisationUnitEntity>? dataViewOrganisationUnits;

  const PersonEntity(
      {required this.id,
      required this.uid,
      required this.code,
      required this.name,
      required this.uuid,
      required this.mobile,
      required this.userInfo,
      required this.organisationUnits,
      required this.dataViewOrganisationUnits});

  @override
  List<Object?> get props => super.props
    ..addAll([mobile, userInfo, organisationUnits, dataViewOrganisationUnits]);
}
