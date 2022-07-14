import 'entities.dart';

class AgeGroupEntity extends IdentifiableEntity {
  @override
  final int? id;

  @override
  final String? uid;

  @override
  final String? code;

  @override
  final String? name;

  final String? shortName;
  final String? description;

  const AgeGroupEntity(
      {required this.id,
      required this.uid,
      required this.code,
      required this.name,
      required this.shortName,
      required this.description});

  @override
  List<Object> get props => [
        super.props..addAll([shortName, description])
      ];
}
