import 'common/common.dart';

class UserEntity extends IdentifiableEntity {
  @override
  final int? id;

  @override
  final String? code;

  @override
  final String? uid;

  @override
  final String? name;

  const UserEntity(
      {required this.id,
      required this.uid,
      required this.code,
      required this.name});
}
