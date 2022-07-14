import 'common/common.dart';

class OrganisationUnitEntity extends IdentifiableEntity {
  @override
  final int? id;

  @override
  final String? uid;

  @override
  final String? code;

  @override
  final String? name;

  const OrganisationUnitEntity({
    required this.id,
    required this.uid,
    required this.code,
    required this.name,
  });
}
